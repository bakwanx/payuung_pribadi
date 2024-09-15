import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:payuung_pribadi/features/base_home/presentation/base_home_screen.dart';
import 'package:payuung_pribadi/features/home/presentation/home_screen.dart';
import 'package:payuung_pribadi/routes/navigation/main_navigation.dart';
import 'di/dependency_injection.dart' as di;
import 'features/auth/login/presentation/email_login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependency();
  runApp(const MyApp());
}

final _router = MainNavigation();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MyAppLayout();
  }
}

class MyAppLayout extends StatelessWidget {
  const MyAppLayout({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Payuung Pribadi',
    );
  }
}
