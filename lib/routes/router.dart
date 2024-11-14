import 'package:clubcon/features/articles/views/article_view.dart';
import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/features/miscellaneous/views/dialog_view.dart';
import 'package:clubcon/features/dashboard/views/dashboard_view.dart';
import 'package:clubcon/features/home/views/home_view.dart';
import 'package:clubcon/features/miscellaneous/views/under_maintainence_view.dart';
import 'package:clubcon/features/community/views/community_view.dart';
import 'package:clubcon/features/notification/views/notification_view.dart';
import 'package:clubcon/features/onboarding/views/welcome_view.dart';
import 'package:clubcon/features/profile/views/profile_set_up_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';
import 'package:clubcon/features/stats/views/stats_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/utils/view_export.dart';
import 'package:get/get.dart';

List<GetPage> getPagesRoute = [
  GetPage(
    name: Routes.onbordingViewRoute,
    page: () => OnboardingView(),
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
    name: Routes.profileSetupViewRoute,
    page: () => ProfileSetupScreen(),
  ),
  GetPage(
    name: Routes.dialogRoute,
    page: () => DialogView(
      content: Get.parameters['content'] ?? '',
      banner: Get.parameters['banner'] ?? '',
      description: Get.parameters['description'],
      onTap: Get.arguments['onTap'],
      buttonText: Get.parameters['buttonText'],
      hasButton: Get.parameters['hasButton'] == 'true',
      floatingButtonImage: Get.parameters['floatingButtonImage'],
      floatingButtonOnTap: Get.arguments['floatingButtonOnTap'],
    ),
  ),
  GetPage(
    name: Routes.welcomeViewRoute,
    page: () => const WelcomeView(),
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
    name: Routes.ExploreViewRoute,
    page: () => const DashboardView(),
  ),
  GetPage(
    name: Routes.noticesViewRoute,
    page: () => const CommunityView(),
  ),
  GetPage(
    name: Routes.statsViewRoute,
    page: () => const StatsView(),
  ),
  GetPage(
    name: Routes.articleViewRoute,
    page: () => const ArticleView(),
  ),
  GetPage(
    name: Routes.notificationViewRoute,
    page: () => const NotificationView(),
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
    page: () => WelcomeView(), // Default route
  ),
];
