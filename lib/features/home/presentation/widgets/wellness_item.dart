import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';
import 'package:payuung_pribadi/utils/themes/theme.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

class WellnessItem extends StatelessWidget {
  final WellnessEntity wellnessEntity;

  const WellnessItem({super.key, required this.wellnessEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // go to wellness detail
      },
      child: Container(
        width: SizeScreen.maxWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              wellnessEntity.imgName,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wellnessEntity.title,
                  style: TypographyTextStyle.headingBold3.copyWith(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  "Rp. ${wellnessEntity.price.toString()}",
                  style: TypographyTextStyle.bodyRegular1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
