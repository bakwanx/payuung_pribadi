import 'package:flutter/material.dart';
import 'package:payuung_pribadi/di/dependency_injection.dart';
import 'package:payuung_pribadi/features/base_home/domain/entities/bottom_nav_menu_entity.dart';

import '../../../../utils/themes/typography_text_style.dart';
import '../cubit/base_home_cubit.dart';

class BottomNavMenuItem extends StatelessWidget {
  final int index;
  final BottomNavMenuEntity bottomNavMenuEntity;
  const BottomNavMenuItem({super.key, required this.index, required this.bottomNavMenuEntity});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        di<BaseHomeCubit>().onChangePage(index);
      },
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              bottomNavMenuEntity.icon,
              size: 30,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              bottomNavMenuEntity.name,
              style: TypographyTextStyle.bodyRegular1.copyWith(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
