import 'package:anatomy/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color textColor;
  final double btnBorderRadius;
  final double btnHeight;
  final double? fontSize;
  const AuthBtn(
      {super.key,
      required this.btnText,
      required this.btnColor,
      required this.btnBorderRadius,
      required this.textColor,
      required this.btnHeight,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      decoration: ShapeDecoration(
        color: btnColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius)),
      ),
      child: Center(
        child: Text(
          btnText,
          style: TextStyle(
            fontFamily: AppTextStyles.fontFamily,
              color: textColor, fontSize: fontSize, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
