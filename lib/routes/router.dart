import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/utils/view_export.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case onbordingViewRoute:
      return MaterialPageRoute(
        builder: (context) => const OnboardingView(),
      );
    case logInViewRoute:
      return MaterialPageRoute(
        builder: (context) => LogInView(),
      );
    case signUpViewRoute:
      return MaterialPageRoute(
        builder: (context) => SignUpView(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnboardingView(),
      );
  }
}
