import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/features/onboarding/presentation/on_boarding_screen.dart';
import 'package:payuung_pribadi/features/splash/presentation/splash_screen.dart';
import 'package:payuung_pribadi/routes/nav_list/on_boarding_nav.dart';

import '../../nav_list/splash_nav.dart';

class OnBoardingRoutes extends GoRoute {
  OnBoardingRoutes()
      : super(
    path: OnBoardingNav.onBoarding.path,
    builder: (context, state) => const OnBoardingScreen(),
  );
}
