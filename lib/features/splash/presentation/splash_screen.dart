import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/core/base/presentation/payuung_base_screen.dart';
import 'package:payuung_pribadi/features/auth/domain/repositories/auth_navigation_repository.dart';
import 'package:payuung_pribadi/features/splash/cubit/splash_cubit.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';
import '../../../di/dependency_injection.dart';
import '../../../utils/const/assets_path.dart';
import '../../base_home/domain/repositories/base_home_navigation_repository.dart';
import '../../onboarding/domain/repositories/on_boarding_navigation_repository.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<SplashCubit>()..initData(),
      child: const SplashScreenUI(),
    );
  }
}

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return PayuungBaseScreen<SplashCubit, SplashState>(
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.isFirstTime) {
            di<OnBoardingNavigationRepository>().goToOnBoardingScreen(context);
            return;
          }
          if (!state.isFirstTime && !state.isLogin) {
            di<AuthNavigationRepository>().goToEmailLoginScreen(context);
            return;
          }
          if (state.isLogin) {
            di<BaseHomeNavigationRepository>().goToBaseHome(context);
            return;
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: CustomColor.yellowColor,
            body: Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(opacity: 0.6, child: Image.asset(splashBg3)),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          logo,
                          width: SizeScreen.maxWidth(context) * 0.45,
                        ),
                        Text(
                          "pribadi",
                          style: TypographyTextStyle.bodyLight1
                              .copyWith(color: Colors.white, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child:
                          Opacity(opacity: 0.6, child: Image.asset(splashBg4)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
