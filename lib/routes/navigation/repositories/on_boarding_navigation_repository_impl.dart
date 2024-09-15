import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../features/onboarding/domain/repositories/on_boarding_navigation_repository.dart';
import '../../nav_list/on_boarding_nav.dart';

class OnBoardingNavigationRepositoryImpl implements OnBoardingNavigationRepository{
  @override
  goToOnBoardingScreen(BuildContext context) {
    context.go(OnBoardingNav.onBoarding.fullpath);
  }

}