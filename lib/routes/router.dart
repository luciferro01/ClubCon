import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/features/dashboard/views/dashboard_view.dart';
import 'package:clubcon/features/home/views/home_view.dart';
import 'package:clubcon/features/miscellaneous/views/under_maintainence_view.dart';
import 'package:clubcon/features/notice/views/notice_view.dart';
import 'package:clubcon/features/profile/views/profile_set_up_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';
import 'package:clubcon/features/stats/views/stats_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/utils/view_export.dart';
import 'package:get/get.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case Routes.onbordingViewRoute:
//       return GetPageRoute(
//         page: () => const OnboardingView(),
//       );
//     case Routes.logInViewRoute:
//       return GetPageRoute(
//         page: () => LogInView(),
//       );
//     case Routes.signUpViewRoute:
//       return GetPageRoute(
//         page: () => SignUpView(),
//       );
//     case Routes.profileViewRoute:
//       return GetPageRoute(
//         page: () => ProfileSetupScreen(),
//       );
//     default:
//       return GetPageRoute(
//         page: () => const OnboardingView(),
//       );
//   }
// }

List<GetPage> getPagesRoute = [
  GetPage(
    name: Routes.onbordingViewRoute,
    page: () => const OnboardingView(),
  ),
  GetPage(
    name: Routes.logInViewRoute,
    page: () => LogInView(),
  ),
  GetPage(
    name: Routes.signUpViewRoute,
    page: () => SignUpView(),
  ),
  GetPage(
    name: Routes.profileViewRoute,
    page: () => ProfileSetupScreen(),
  ),
  GetPage(
    name: Routes.homeViewRoute,
    page: () => HomeView(),
  ),
  GetPage(
    name: Routes.dashboardViewRoute,
    page: () => const DashboardView(),
  ),
  GetPage(
    name: Routes.searchViewRoute,
    page: () => const DashboardView(),
  ),
  GetPage(
    name: Routes.noticesViewRoute,
    page: () => const NoticeView(),
  ),
  GetPage(
    name: Routes.statsViewRoute,
    page: () => const StatsView(),
  ),
  GetPage(
    name: Routes.profileViewRoute,
    page: () => const ProfileView(),
  ),
  GetPage(
    name: Routes.underMaintainenceRoute,
    page: () => const UnderMaintenanceScreen(),
  ),
  // Optional: Default route
  GetPage(
    name: '/',
    page: () => const OnboardingView(), // Default route
  ),
];
