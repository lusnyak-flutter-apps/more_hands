import 'package:auto_route/auto_route.dart';
import 'package:more_hands/presentation/pages/app_loading/app_loading_page.dart';
import 'package:more_hands/presentation/pages/auth/authorization_page.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/bottom_navigation_page.dart';
import 'package:more_hands/presentation/pages/edit_profile/pages/profile_contacts_page.dart';
import 'package:more_hands/presentation/pages/edit_profile/pages/profile_name_and_image_page.dart';
import 'package:more_hands/presentation/pages/home/home_page.dart';
import 'package:more_hands/presentation/pages/onboarding/onboarding_page.dart';
import 'package:more_hands/presentation/pages/profile/profile_page.dart';
import 'package:more_hands/presentation/pages/requests/requests_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppLoadingRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: AuthorizationRoute.page),
        AutoRoute(page: BottomNavigationRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: RequestsRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: ProfileNameAndImageRoute.page),
        AutoRoute(page: ProfileContactsRoute.page),
      ];
}
