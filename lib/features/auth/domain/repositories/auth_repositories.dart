import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/city_model/city_model.dart';
import 'package:flutter_tdd/features/auth/data/models/country_model/country_model.dart';
import 'package:flutter_tdd/features/auth/data/models/generic_response_model/generic_response_model.dart';
import 'package:flutter_tdd/features/auth/data/models/login_signup_by_phone/login_sign_up_phone.dart';
import 'package:flutter_tdd/features/auth/data/models/social_model/social_model.dart';
import 'package:flutter_tdd/features/auth/data/models/verify_code_model/verify_code_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_address_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/add_cr_params.dart';
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

import '../../data/models/search_history/search_history_model.dart';
import '../entity/add_vat_params.dart';

abstract class AuthRepository {
  Future<MyResult<String>> login(LoginParams param);

  Future<MyResult<LoginSignUpByPhoneModel>> loginOrSignupByPhone(
      LoginSignUpByPhoneParams param);

  Future<MyResult<bool>> forgetPassword(ForgetPasswordParams param);

  Future<MyResult<bool>> resetPassword(ResetPasswordParams param);

  Future<MyResult<VerifyCodeModel>> verifyCode(VerifyEmailParams param);

  Future<MyResult<GenericResponseModel>> checkUniqueness(
      CheckUniquenessParams params);

  Future<MyResult<bool>> sendOtpPhone(SendOtpPhoneParams params);

  Future<MyResult<bool>> verifyCodeByPhone(VerifyPhoneParams params);

  Future<MyResult<String>> signup(SignUpParams params);

  Future<MyResult<String>> getProfileInfo();

  Future<MyResult<bool>> profileVerification(ProfileVerificationParams params);

  Future<MyResult<String>> signUpUpdateProfile(ProfileParamsList params);

  Future<MyResult<bool>> addCRNumber(AddCrParams params);

  Future<MyResult<bool>> addVATNumber(AddVATParams params);

  Future<MyResult<bool>> updateProfileName(UpdateProfileNameParams params);

  Future<MyResult<List<CountryModel>>> getCountries();

  Future<MyResult<List<StatesModel>>> getStates(StatesParams params);

  Future<MyResult<List<CityModel>>> getCities(CityParams params);

  Future<MyResult<bool>> addAddress(AddAddressParams params);

  Future<MyResult<bool>> updateProfileAddress(
      UpdateProfileAddressParams params);

  Future<MyResult<bool>> updateProfileGender(UpdateProfileGenderParams params);

  Future<MyResult<SocialModel>> getSocial();

  Future<MyResult<bool>> updateProfileSocial(UpdateProfileSocialParams params);

  Future<MyResult<bool>> addSocial(AddSocialParams params);

  Future<MyResult<bool>> addSocialPlatform(AddSocialPlatformParams params);

  Future<MyResult<bool>> updateProfileImage(UpdateProfileImageParams params);

  Future<MyResult<bool>> claimLink(ClaimLinkParams params);

  Future<MyResult<bool>> updateLanguage(ProfileParamsList params);

  Future<MyResult<bool>> logout(LogoutParams params);

  Future<MyResult<SearchHistoryResponseModel>> getSearchHistory(String params);

  Future<MyResult<bool>> deleteRecentSearchHistory();
}
