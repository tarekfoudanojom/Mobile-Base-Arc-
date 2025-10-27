import 'package:flutter_tdd/core/helpers/aes_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/city_model/city_model.dart';
import 'package:flutter_tdd/features/auth/data/models/country_model/country_model.dart';
import 'package:flutter_tdd/features/auth/data/models/generic_response_model/generic_response_model.dart';
import 'package:flutter_tdd/features/auth/data/models/login_signup_by_phone/login_sign_up_phone.dart';
import 'package:flutter_tdd/features/auth/data/models/social_model/social_model.dart';
import 'package:flutter_tdd/features/auth/data/models/verify_code_model/verify_code_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_address_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_social_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_social_platform_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/check_uniqueness_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/city_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/claim_link_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/forget_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/language_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_signup_by_phone.dart';
import 'package:flutter_tdd/features/auth/domain/entity/logout_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/profile_verification_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/reset_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/send_otp_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/sign_up_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/state_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/update_profile_address_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/update_profile_gender_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/update_profile_name_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/update_profile_social_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_email_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/models/states_model.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../domain/entity/add_cr_params.dart';
import '../../domain/entity/add_vat_params.dart';
import '../models/search_history/search_history_model.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository {
  final dataSource = getIt.get<AuthDataSource>();

  @override
  Future<MyResult<String>> login(LoginParams param) async {
    return await dataSource.login(param);
  }

  @override
  Future<MyResult<LoginSignUpByPhoneModel>> loginOrSignupByPhone(
      LoginSignUpByPhoneParams param) async {
    return await dataSource.loginOrSignupByPhone(param);
  }

  @override
  Future<MyResult<bool>> forgetPassword(ForgetPasswordParams param) async {
    return await dataSource.forgetPassword(param);
  }

  @override
  Future<MyResult<bool>> resetPassword(ResetPasswordParams param) async {
    return await dataSource.resetPassword(param);
  }

  @override
  Future<MyResult<VerifyCodeModel>> verifyCode(VerifyEmailParams param) async {
    return await dataSource.verifyCode(param);
  }

  @override
  Future<MyResult<GenericResponseModel>> checkUniqueness(
      CheckUniquenessParams params) async {
    return await dataSource.checkUniqueness(params);
  }

  @override
  Future<MyResult<bool>> sendOtpPhone(SendOtpPhoneParams params) async {
    return await dataSource.sendOtpPhone(params);
  }

  @override
  Future<MyResult<bool>> verifyCodeByPhone(VerifyPhoneParams params) async {
    return await dataSource.verifyCodeByPhone(params);
  }

  @override
  Future<MyResult<String>> signup(SignUpParams params) async {
    return await dataSource.signup(params);
  }

  @override
  Future<MyResult<String>> getProfileInfo() async {
    return await dataSource.getProfileInfo();
  }

  @override
  Future<MyResult<bool>> profileVerification(
      ProfileVerificationParams params) async {
    return await dataSource.profileVerification(params);
  }

  @override
  Future<MyResult<String>> signUpUpdateProfile(ProfileParamsList params) async {
    return await dataSource.signUpUpdateProfile(params);
  }

  @override
  Future<MyResult<bool>> addCRNumber(AddCrParams params) async {
    return await dataSource.addCRNumber(params);
  }

  @override
  Future<MyResult<bool>> addVATNumber(AddVATParams params) async {
    return await dataSource.addVATNumber(params);
  }

  @override
  Future<MyResult<bool>> updateProfileName(
      UpdateProfileNameParams params) async {
    return await dataSource.updateProfileName(params);
  }

  @override
  Future<MyResult<List<CityModel>>> getCities(CityParams params) async {
    var result = await dataSource.getCities(params);
    var dec =
        await AesService.instance.customDecrypt(result.data!.data.toString());
    List<CityModel> cities =
        List<CityModel>.from(dec.map((e) => CityModel.fromJson(e)));
    return MyResult.isSuccess(cities);
  }

  @override
  Future<MyResult<List<CountryModel>>> getCountries() async {
    var result = await dataSource.getCountries();
    // var dec = await AesService.instance.customDecrypt(result.data!.data.toString());
    var dec = JwtDecoder.decode(result.data?.data ?? '');
    List<CountryModel> countries = List<CountryModel>.from(
        dec['data'].map((e) => CountryModel.fromJson(e)));
    return MyResult.isSuccess(countries);
  }

  @override
  Future<MyResult<bool>> addAddress(AddAddressParams params) async {
    return await dataSource.addAddress(params);
    // var dec = await AesService.instance.decrypt(result.data!.data.toString());
    // return MyResult.isSuccess(AddressModel.fromJson(dec));
  }

  @override
  Future<MyResult<bool>> updateProfileAddress(
      UpdateProfileAddressParams params) async {
    return await dataSource.updateProfileAddress(params);
  }

  @override
  Future<MyResult<SocialModel>> getSocial() async {
    var result = await dataSource.getSocial();
    var dec = await AesService.instance.decrypt(result.data!.data.toString());
    return MyResult.isSuccess(SocialModel.fromJson(dec));
  }

  @override
  Future<MyResult<bool>> updateProfileGender(
      UpdateProfileGenderParams params) async {
    return await dataSource.updateProfileGender(params);
  }

  @override
  Future<MyResult<bool>> addSocial(AddSocialParams params) async {
    return await dataSource.addSocial(params);
  }

  @override
  Future<MyResult<bool>> updateProfileSocial(
      UpdateProfileSocialParams params) async {
    return await dataSource.updateProfileSocial(params);
  }

  @override
  Future<MyResult<bool>> addSocialPlatform(
      AddSocialPlatformParams params) async {
    return await dataSource.addSocialPlatform(params);
  }

  @override
  Future<MyResult<bool>> updateProfileImage(
      UpdateProfileImageParams params) async {
    return await dataSource.updateProfileImage(params);
  }

  @override
  Future<MyResult<bool>> claimLink(ClaimLinkParams params) async {
    return await dataSource.claimLink(params);
  }

  @override
  Future<MyResult<bool>> updateLanguage(ProfileParamsList params) async {
    return await dataSource.updateLanguage(params);
  }

  @override
  Future<MyResult<bool>> logout(LogoutParams params) async {
    return await dataSource.logout(params);
  }

  @override
  Future<MyResult<List<StatesModel>>> getStates(StatesParams params) async {
    var result = await dataSource.getStates(params);
    var dec =
        await AesService.instance.customDecrypt(result.data!.data.toString());
    // log("""===dec=>${dec}""");
    List<StatesModel> cities =
        List<StatesModel>.from(dec.map((e) => StatesModel.fromJson(e)));
    return MyResult.isSuccess(cities);
  }

  @override
  Future<MyResult<SearchHistoryResponseModel>> getSearchHistory(
      String params) async {
    return await dataSource.getSearchHistory(params);
  }

  @override
  Future<MyResult<bool>> deleteRecentSearchHistory() async {
    return await dataSource.deleteRecentSearchHistory();
  }
}
