import 'package:flutter_tdd/core/widgets/not_verification_view.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';

import '../constants/global_imports.dart';

class VerificationAccountStatusView extends StatelessWidget {
  const VerificationAccountStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    int? isVerified = context.watch<ProfileCubit>().state.model?.isVerified;
    if (isVerified == 0) {
      return NotVerificationView(title: Translate.s.complete_your_data);
    } else {
      return NotVerificationView(
        assetImage: Res.inProgressVerification,
        title: Translate.s.your_information_in_review,
        subTitle: Translate.s.thank_for_completing_account_information,
        imageSize: 75,
      );
    }
  }
}
