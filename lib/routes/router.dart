import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/utils/view_export.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.onbordingViewRoute:
      return GetPageRoute(
        page: () => const OnboardingView(),
      );
    case Routes.logInViewRoute:
      return GetPageRoute(
        page: () => LogInView(),
      );
    case Routes.signUpViewRoute:
      return GetPageRoute(
        page: () => SignUpView(),
      );
    case Routes.profileViewRoute:
      return GetPageRoute(
        page: () => ProfileSetupScreen(),
      );
    default:
      return GetPageRoute(
        page: () => const OnboardingView(),
      );
  }
}
