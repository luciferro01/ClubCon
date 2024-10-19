import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/utils/view_export.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.onbordingViewRoute:
      return MaterialPageRoute(
        builder: (context) => const OnboardingView(),
      );
    case Routes.logInViewRoute:
      return MaterialPageRoute(
        builder: (context) => LogInView(),
      );
    case Routes.signUpViewRoute:
      return MaterialPageRoute(
        builder: (context) => SignUpView(),
      );
    case Routes.profileViewRoute:
      return MaterialPageRoute(
        builder: (context) => ProfileSetupScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnboardingView(),
      );
  }
}
