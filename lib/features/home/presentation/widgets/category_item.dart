import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/features/home/domain/entities/category_item_entity.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

class CategoryItem extends StatelessWidget {
  final CategoryItemEntity categoryItemEntity;
  const CategoryItem({super.key, required this.categoryItemEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              fit: BoxFit.fill,
              categoryItemEntity.icon,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              categoryItemEntity.name,
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
