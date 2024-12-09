import 'package:auto_route/auto_route.dart';
import 'package:more_hands/presentation/pages/app_loading/app_loading_page.dart';
import 'package:more_hands/presentation/pages/auth/authorization_page.dart';
import 'package:more_hands/presentation/pages/onboarding/onboarding_page.dart';

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
  ];
}
