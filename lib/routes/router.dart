import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';

import '../features/onboarding/views/onboarding_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case onbordingViewRoute:
      return MaterialPageRoute(
        builder: (context) => const OnboardingView(),
      );

    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnboardingView(),
      );
  }
}
