import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payuung_pribadi/features/base_home/presentation/cubit/base_home_cubit.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

import '../../../di/dependency_injection.dart';

class BaseHomeScreen extends StatelessWidget {
  const BaseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<BaseHomeCubit>()..getPage(),
      child: const BaseHomeScreenUI(),
    );
  }
}

class BaseHomeScreenUI extends StatefulWidget {
  const BaseHomeScreenUI({super.key});

  @override
  State<BaseHomeScreenUI> createState() => _BaseHomeScreenUIState();
}

class _BaseHomeScreenUIState extends State<BaseHomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BaseHomeCubit, BaseHomeState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          return Stack(
            children: [
              Positioned.fill(child: state.pages[state.indexPage]),
              DraggableScrollableSheet(
                initialChildSize: 0.17,
                minChildSize: 0.17,
                maxChildSize: 0.4,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Column(
                    children: [
                      Container(
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80.0),
                            topRight: Radius.circular(80.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.expand_less,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: GridView.builder(
                            controller: scrollController,
                            padding: EdgeInsets.zero,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.4,
                              crossAxisSpacing: 6,
                            ),
                            itemCount: state.bottomNavMenuEntities.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  context
                                      .read<BaseHomeCubit>()
                                      .onChangePage(index);
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      state.bottomNavMenuEntities[index].icon,
                                      size: 30,
                                      color: index == state.indexPage ? CustomColor.yellowColor :Colors.grey,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      state.bottomNavMenuEntities[index].name,
                                      style: TypographyTextStyle.bodyRegular1.copyWith(
                                        fontSize: 12
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
