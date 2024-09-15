import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payuung_pribadi/core/base/presentation/payuung_base_screen.dart';
import 'package:payuung_pribadi/features/home/domain/entities/financial_item_entity.dart';
import 'package:payuung_pribadi/features/home/presentation/cubit/home_cubit.dart';
import 'package:payuung_pribadi/features/home/presentation/widgets/category_item.dart';
import 'package:payuung_pribadi/features/home/presentation/widgets/financial_product_item.dart';
import 'package:payuung_pribadi/features/home/presentation/widgets/wellness_item.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

import '../../../di/dependency_injection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomeCubit>()..initData(),
      child: const HomeScreenUI(),
    );
  }
}

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    appBar() {
      return AppBar(
        backgroundColor: CustomColor.yellowColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang",
              style: TypographyTextStyle.bodyRegular1
                  .copyWith(color: Colors.white),
            ),
            Text(
              "Farhan",
              style: TypographyTextStyle.subHeadingBold1
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.notifications_outlined,
            size: 24,
            color: Colors.white,
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff7c94b6),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Center(
                  child: Text(
                "F",
                style: TypographyTextStyle.headingBold1.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                ),
              )),
            ),
          )
        ],
      );
    }

    Widget financialProduct() {
      return InkWell(
        onTap: (){
          debugPrint("pesan onclick");
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 24,
                ),
                child: const Text(
                  "Produk Keuangan",
                  style: TypographyTextStyle.headingBold6,
                ),
              ),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) {
                  return current.financialItemEntities.isNotEmpty;
                },
                builder: (ctx, state) {
                  return Container(
                    margin: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.financialItemEntities.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 0,
                      ),
                      itemBuilder: (ctx, idx) {
                        return FinancialProductItem(
                          financialItemEntity: state.financialItemEntities[idx],
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 24,
              ),
              child: const Text(
                "Kategory Pilihan",
                style: TypographyTextStyle.headingBold6,
              ),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) {
                return current.categoryItemEntities.isNotEmpty;
              },
              builder: (ctx, state) {
                return Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.categoryItemEntities.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 0,
                    ),
                    itemBuilder: (ctx, idx) {
                      return CategoryItem(
                        categoryItemEntity: state.categoryItemEntities[idx],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    Widget wellness() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: const Text(
                    "Explore Wellness",
                    style: TypographyTextStyle.headingBold6,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 24,
                  ),
                  child: const Text(
                    "Terpopuler",
                    style: TypographyTextStyle.headingBold6,
                  ),
                ),
              ],
            ),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) {
                return current.wellnessEntities.isNotEmpty;
              },
              builder: (ctx, state) {
                return Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                    left: 24,
                    right: 8,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.wellnessEntities.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (ctx, idx) {
                      return WellnessItem(
                        wellnessEntity: state.wellnessEntities[idx],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    return PayuungBaseScreen<HomeCubit, HomeState>(
      child: Scaffold(
        appBar: appBar(),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: SizeScreen.maxWidth(context),
                height: 80,
                decoration: BoxDecoration(
                  color: CustomColor.yellowColor,
                ),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    bottom: SizeScreen.maxHeight(context) * 0.2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      financialProduct(),
                      category(),
                      wellness(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
