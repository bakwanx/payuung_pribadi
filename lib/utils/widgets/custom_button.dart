import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payuung_pribadi/utils/themes/typography_text_style.dart';

import '../themes/theme.dart';

class CustomButton extends StatelessWidget {
  final double? width, height;
  final Function() onPressed;
  final String? textButton;
  final Color? textColor;
  final String? iconButton;
  final EdgeInsets? margin;
  final Color? borderColor;
  final Color? backgroundColor;
  final bool isActive;
  final String? logoSvg;

  const CustomButton({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    this.textButton,
    this.textColor,
    this.iconButton,
    this.margin,
    this.borderColor,
    this.backgroundColor,
    this.isActive = true,
    this.logoSvg
  });

  @override
  Widget build(BuildContext context) {
    if(logoSvg != null){
      return Container(
        margin: margin,
        child: SizedBox(
          height: height ?? 55,
          width: width ?? SizeScreen.maxWidth(context),
          child: TextButton(
            onPressed: () {
              if (isActive) {
                onPressed();
              }
            },
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor ?? Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: borderColor ?? CustomColor.yellowColor,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(logoSvg!, width: 20,),
                const SizedBox(width: 8),
                Text(
                  textButton ?? "",
                  style: TypographyTextStyle.bodyRegular1.copyWith(
                    color: textColor ?? Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Container(
      margin: margin,
      child: SizedBox(
        height: height ?? 55,
        width: width ?? SizeScreen.maxWidth(context),
        child: TextButton(
          onPressed: () {
            if (isActive) {
              onPressed();
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: isActive
                ? CustomColor.yellowColor
                : CustomColor.yellowLightColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: borderColor ?? CustomColor.yellowColor,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: iconButton != null
              ? Image.asset(
                  iconButton!,
                  width: 20,
                )
              : Text(
                  textButton ?? "",
                  style: TypographyTextStyle.bodyRegular1.copyWith(
                    color: textColor ?? Colors.white,
                    fontSize: 18,
                  ),
                ),
        ),
      ),
    );
  }
}
