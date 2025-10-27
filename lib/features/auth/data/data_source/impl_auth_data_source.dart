// ignore_for_file: avoid_dynamic_calls
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/generic_response_model/generic_response_model.dart';
import 'package:flutter_tdd/features/auth/data/models/login_signup_by_phone/login_sign_up_phone.dart';
import 'package:flutter_tdd/features/auth/data/models/verify_code_model/verify_code_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_address_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_social_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_social_platform_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_vat_params.dart';
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
import 'package:injectable/injectable.dart';

import '../../domain/entity/add_cr_params.dart';
import '../models/search_history/search_history_model.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource {
  @override
  Future<MyResult<String>> login(LoginParams param) async {
    Map<String, dynamic>? requestBody = param.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<LoginSignUpByPhoneModel>> loginOrSignupByPhone(
      LoginSignUpByPhoneParams param) async {
    Map<String, dynamic>? requestBody = param.toJson();
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.loginOrSignupByPhone,
        requestMethod: RequestMethod.post,
        responseType: ResType.model,
        showLoader: false,
        requestBody: requestBody,
        responseKey: (data) => data,
        toJsonFunc: (data) => LoginSignUpByPhoneModel.fromJson(data));
    return await GenericHttpImpl<LoginSignUpByPhoneModel>()(model);
  }

  @override
  Future<MyResult<bool>> forgetPassword(ForgetPasswordParams param) async {
    Map<String, dynamic>? requestBody = param.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.forgetPassword,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: requestBody,
      showLoader: true,
      responseKey: (data) => data['status'],
    );

    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> resetPassword(ResetPasswordParams param) async {
    Map<String, dynamic>? requestBody = param.toJson();
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.resetPassword,
        requestMethod: RequestMethod.post,
        responseType: ResType.type,
        requestBody: requestBody,
        responseKey: (data) => data['status'],
        showLoader: true);
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<VerifyCodeModel>> verifyCode(VerifyEmailParams param) async {
    Map<String, dynamic>? requestBody = param.toJson();
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.verifyPasswordCode,
        requestMethod: RequestMethod.post,
        responseType: ResType.model,
        requestBody: requestBody,
        responseKey: (data) => data,
        toJsonFunc: (data) => VerifyCodeModel.fromJson(data),
        showLoader: false);
    return await GenericHttpImpl<VerifyCodeModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> checkUniqueness(
      CheckUniquenessParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.checkUniqueness,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      requestBody: requestBody,
      responseKey: (data) => data,
      showLoader: false,
      showErrorMsg: false,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> sendOtpPhone(SendOtpPhoneParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();

    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.sendOtpPhone,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      requestBody: requestBody,
      showLoader: false,
      showErrorMsg: true,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> verifyCodeByPhone(VerifyPhoneParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.verifyPasswordCode,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<String>> signup(SignUpParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.signup,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data["data"],
      // toJsonFunc: (json) => LoginModel.fromJson(json),
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<String>> getProfileInfo() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProfileInfo,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      refresh: true,
      showErrorMsg: false,
      responseKey: (data) => data["data"],
      // toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<bool>> profileVerification(
      ProfileVerificationParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.profileVerification,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<String>> signUpUpdateProfile(ProfileParamsList params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<bool>> updateProfileName(
      UpdateProfileNameParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> addCRNumber(AddCrParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addCRNumber,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> addVATNumber(AddVATParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addVatNumber,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getCities(CityParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCities,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getCountries() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCountries,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: false,
      responseKey: (data) => data,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> addAddress(AddAddressParams params) async {
    // Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.setCoordinates,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: params.toJson(),
      responseKey: (data) => data["status"],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> updateProfileAddress(
      UpdateProfileAddressParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getSocial() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getSocial,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: false,
      responseKey: (data) => data,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> updateProfileGender(
      UpdateProfileGenderParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> addSocial(AddSocialParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addSocial,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> updateProfileSocial(
      UpdateProfileSocialParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> addSocialPlatform(
      AddSocialPlatformParams params) async {
    Map<String, dynamic>? requestBody = await params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addSocialPlatform,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> updateProfileImage(
      UpdateProfileImageParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfilePicture,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> claimLink(ClaimLinkParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> updateLanguage(ProfileParamsList params) async {
    print("json ---- ${params.toJson()}");
    Map<String, dynamic>? requestBody = await params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> logout(LogoutParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.logout,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      requestBody: requestBody,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getStates(StatesParams params) async {
    Map<String, dynamic>? requestBody = await params.toEncodedMap();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getStates,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: false,
      requestBody: requestBody,
      showErrorMsg: false,
      responseKey: (data) => data,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<SearchHistoryResponseModel>> getSearchHistory(
      String params) async {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.searchHistory(params),
        requestMethod: RequestMethod.get,
        responseType: ResType.model,
        showLoader: false,
        responseKey: (data) => data,
        toJsonFunc: (data) => SearchHistoryResponseModel.fromJson(data));
    return await GenericHttpImpl<SearchHistoryResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> deleteRecentSearchHistory() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.searchHistory(""),
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      showLoader: false,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }
}
