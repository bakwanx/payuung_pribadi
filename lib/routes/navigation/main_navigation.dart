import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/routes/navigation/routes/auth_routes.dart';
import 'package:payuung_pribadi/routes/navigation/routes/base_home_route.dart';
import 'package:payuung_pribadi/routes/navigation/routes/on_boarding_routes.dart';

import '../nav_list/splash_nav.dart';
import 'routes/splash_routes.dart';

class MainNavigation extends GoRouter {
  MainNavigation()
      : super(
    routes: [
      SplashRoutes(),
      OnBoardingRoutes(),
      AuthRoutes(),
      BaseHomeRoute(),
    ],
    initialLocation: SplashNav.splash.fullpath,
    debugLogDiagnostics: true,
  );
}
