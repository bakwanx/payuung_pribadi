import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/di/dependency_injection.dart';
import 'package:payuung_pribadi/features/auth/domain/repositories/auth_navigation_repository.dart';
import 'package:payuung_pribadi/features/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:payuung_pribadi/utils/const/assets_path.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';
import 'package:payuung_pribadi/utils/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<OnBoardingCubit>()..initBoardingData(),
      child: const OnBoardingScreenUI(),
    );
  }
}

class OnBoardingScreenUI extends StatefulWidget {
  const OnBoardingScreenUI({super.key});

  @override
  State<OnBoardingScreenUI> createState() => _OnBoardingScreenUIState();
}

class _OnBoardingScreenUIState extends State<OnBoardingScreenUI> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
      pageController.animateToPage(
        state.pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    }, child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      introBg1,
                      color: CustomColor.yellowColor,
                    )),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: SizeScreen.maxHeight(context) * 0.6,
                      child: PageView.builder(
                        onPageChanged: (index) {
                          context.read<OnBoardingCubit>().onChangePage(index);
                        },
                        itemCount: state.onBoardingEntities.length,
                        controller: pageController,
                        itemBuilder: (context, index) => OnBoardContent(
                          title: state.onBoardingEntities[index].title,
                          description:
                              state.onBoardingEntities[index].description,
                          image: state.onBoardingEntities[index].image,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            state.onBoardingEntities.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: DotIndicator(
                                isActive: index == state.pageIndex,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      introBg2,
                      color: CustomColor.yellowColor,
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: state.pageIndex == state.onBoardingEntities.length - 1 ? CustomButton(
                  onPressed: () {
                    di<AuthNavigationRepository>().goToEmailLoginScreen(context);
                  },
                  textButton: "Buat akun",
                  margin: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 20,
                    bottom: 24,
                  ),
                ) : const SizedBox(),
              ),
            ],
          ),
        );
      },
    ));
  }
}

class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            width: SizeScreen.maxWidth(context) * 0.8,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            title,
            style: TypographyTextStyle.headingBold5,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TypographyTextStyle.bodyRegular1,
          ),
        ],
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 8 : 8,
      decoration: BoxDecoration(
        color: isActive ? CustomColor.yellowColor : Colors.white,
        border: isActive ? null : Border.all(color: CustomColor.yellowColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
