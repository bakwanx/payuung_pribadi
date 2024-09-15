import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/features/base_home/presentation/base_home_screen.dart';
import 'package:payuung_pribadi/routes/nav_list/base_home_nav.dart';
import 'package:payuung_pribadi/routes/navigation/routes/profile_routes.dart';

class BaseHomeRoute extends GoRoute {
  BaseHomeRoute()
      : super(
    path: BaseHomeNav.baseHome.path,
    builder: (context, state) => const BaseHomeScreen(),
    routes: [
      ProfileRoutes(),
    ],
  );
}
