import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/data/models/social_platform_model/social_platform_model.dart';

final List<AutoRoute> authRoutes = [
  AdaptiveRoute(page: Splash.page, initial: true),
  AdaptiveRoute(
    page: AuthPageRoute.page,
  ),
  AdaptiveRoute(
    page: ActiveAccount.page,
  ),
  AdaptiveRoute(
    page: ResetPasswordPageRoute.page,
  ),
  AdaptiveRoute(
    page: OnboardingPageRoute.page,
  ),
  AdaptiveRoute(
    page: ConfirmPageRoute.page,
  ),
  AdaptiveRoute(
    page: SignUpPageRoute.page,
  ),
  AdaptiveRoute(
    page: CompleteSignUpPageRoute.page,
  ),
  AdaptiveRoute(
    page: SelectAboutUsPage.page,
  ),
  AdaptiveRoute(
    page: ChangePasswordPageRoute.page,
  ),
  AdaptiveRoute(
    page: ChangePasswordConfirmPageRoute.page,
  ),
];
