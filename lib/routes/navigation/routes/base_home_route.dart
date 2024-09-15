import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/features/base_home/presentation/base_home_screen.dart';
import 'package:payuung_pribadi/routes/nav_list/base_home_nav.dart';

class BaseHomeRoute extends GoRoute {
  BaseHomeRoute()
      : super(
    path: BaseHomeNav.baseHome.path,
    builder: (context, state) => const BaseHomeScreen(),
    routes: [
      // GoRoute(
      //   path: AuthNav.passwordLogin.path,
      //   builder: (context, state) => PasswordLoginScreen(
      //     email: state.queryParams['email'],
      //   ),
      // ),
    ],
  );
}
