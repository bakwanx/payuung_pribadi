import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/routes/nav_list/auth_nav.dart';
import 'package:payuung_pribadi/routes/utils/util_router.dart';

import '../../../features/auth/domain/repositories/auth_navigation_repository.dart';
import '../../../features/onboarding/domain/repositories/on_boarding_navigation_repository.dart';
import '../../nav_list/on_boarding_nav.dart';

class AuthNavigationRepositoryImpl implements AuthNavigationRepository{

  @override
  goToEmailLoginScreen(BuildContext context) {
    context.push(AuthNav.emailLogin.fullpath);
  }

  @override
  goToPasswordLoginScreen(BuildContext context,  {required String email}) {
    context.pushExtra(AuthNav.passwordLogin.fullpath, extra: {"email": email});
  }

}