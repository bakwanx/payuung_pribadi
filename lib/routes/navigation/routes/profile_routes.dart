import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/routes/nav_list/profile_nav.dart';

import '../../../features/profile/presentation/profile_screen.dart';

class ProfileRoutes extends GoRoute {
  ProfileRoutes()
      : super(
    path: ProfileNav.profile.path,
    builder: (context, state) => const ProfileScreen(),
  );
}
