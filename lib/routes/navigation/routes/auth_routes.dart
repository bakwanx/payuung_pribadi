import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/features/auth/login/presentation/email_login_screen.dart';
import 'package:payuung_pribadi/features/auth/login/presentation/password_login_screen.dart';
import 'package:payuung_pribadi/routes/nav_list/auth_nav.dart';
import 'package:payuung_pribadi/utils/ext/safe_null_object.dart';

class AuthRoutes extends GoRoute {
  AuthRoutes()
      : super(
          path: AuthNav.emailLogin.path,
          builder: (context, state) => const EmailLoginScreen(),
          routes: [
            GoRoute(
              path: AuthNav.passwordLogin.path,
              builder: (context, state) => PasswordLoginScreen(
                email: state.queryParams['email'],
              ),
            ),
          ],
        );
}
