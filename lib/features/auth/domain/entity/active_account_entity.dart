import 'package:flutter_tdd/features/auth/data/enums/active_acc_enum.dart';
import 'package:flutter_tdd/features/auth/domain/entity/sign_up_params.dart';

class ActiveAccountEntity {
  final ActiveAccTypes type;
  final String emailOrPhone;
  final SignUpParams? signUpParams;
  final bool usePhoneNumber;

  ActiveAccountEntity( {
    required this.type,
    required this.emailOrPhone,
   required this.usePhoneNumber,
    this.signUpParams,
  });
}
