part of 'auth_page_imports.dart';

class LoginController {
  late ProfileRequester _profileRequester;

  LoginController(bool initialTab) {
    _profileRequester = ProfileRequester();
    changeFieldTypeObs.setValue(initialTab);
  }

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// keys
  final GlobalKey<FormState> formKey = GlobalKey();

  /// observables
  final ObsValue<bool> changeFieldTypeObs = ObsValue<bool>.withInit(false);

  /// blocs
  final BaseBloc<List<CountriesModel>> countriesBloc = BaseBloc<List<CountriesModel>>();

  /// variables
  // final LoginViewController loginController = LoginViewController();
  // final SignUpViewController signUpController = SignUpViewController();


  /// methods
  Future<User?> signInWithGoogle(BuildContext context) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ["profile", "email"]);
    try {
      bool isLogged = await googleSignIn.isSignedIn();
      if (isLogged) {
        await googleSignIn.disconnect();
        await auth.signOut();
      }
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCredential = await auth.signInWithCredential(credential);
        var params = await _facebookAndGoogleLoginParams(userCredential.user!);
        onSaveLoginData(context, params);
        return userCredential.user;
      }
    } catch (e) {
      print("error=======>>>> $e");
      return null;
    }
    return null;
  }

  void signInWithApple(BuildContext context) async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        // nonce: nonce,
      );
      final OAuthCredential oauthCredential = OAuthProvider("apple.com").credential(
          idToken: appleCredential.identityToken, accessToken: appleCredential.authorizationCode);
      await FirebaseAuth.instance.signInWithCredential(oauthCredential).then((value) async {
        _appleLoginParams(value.user!).then((params) {
          onSaveLoginData(context, params);
        });
      });
    } catch (e) {
      log("error=====>>>$e");
      // return false;
    }
    // return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
    // return false;
  }

  void onSaveLoginData(BuildContext context, LoginParams params) async {
    var data = await getIt<AuthRepository>().login(params);
    data.whenOrNull(
      isSuccess: (data) {
        context.read<DeviceCubit>().updateWhatsAppMode(false);
        getIt<UserServicesHelper>().saveUserData(context, data!).then((val) async {
          _profileRequester.request().then(
                (value) async {
              Future.delayed(const Duration(milliseconds: 500)).then(
                    (value) async {
                  AutoRouter.of(context).popAndPush(HomePageRoute());
                },
              );
            },
          );
        });
      },
    );
  }

  Future<UserCredential?> getFacebookUserCredential() async {
    try {
      final facebook = FacebookAuth.instance;
      // Trigger the sign-in flow
      final LoginResult loginResult = await facebook.login();

      // Create a credential from the access token
      final token = loginResult.accessToken!.tokenString;
      final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(token);
      log("facebookAuthCredential $facebookAuthCredential");
      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      log("Facebook User Credential=========ERROR=======>>$e");
      return null;
    }
  }



  /// params
  Future<LoginParams> _facebookAndGoogleLoginParams(User user) async {
    return LoginParams(
      deviceToken: (await getIt<Utilities>().deviceToken),
      deviceType: Platform.isIOS ? 2 : 1,
      userName: user.displayName ?? '',
      profileTypeId: 1,
      googleId: user.providerData.first.uid,
      firstName: user.displayName?.split(" ").first,
      lastName: user.displayName?.split(" ").last,
      email: user.email ?? '',
      loginMethod: "social_media_login",
    );
  }

  Future<LoginParams> _appleLoginParams(User user) async {
    return LoginParams(
      deviceToken: (await getIt<Utilities>().deviceToken),
      deviceType: Platform.isIOS ? 2 : 1,
      userName: user.displayName ?? '',
      profileTypeId: 1,
      appleId: user.uid,
      firstName: user.displayName?.split(" ").first,
      lastName: user.displayName?.split(" ").last,
      email: user.email ?? '',
      loginMethod: "social_media_login",
    );
  }

}
