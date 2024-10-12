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
        builder: (context) => const LoginView(),
      );

    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnboardingView(),
      );
  }
}
