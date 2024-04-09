import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final int? maxLine;

  const PasswordTextField(
      {super.key,
      required this.controller,
      required this.text,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 40.h,
      decoration: const BoxDecoration(
          //decoration
          ),
      child: TextFormField(
        maxLines: maxLine,
        // textAlign: TextAlign.center,
        cursorColor: AppColors.whiteTextColor,
        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14.sp),
        obscureText: obscureText,
        controller: controller,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 10.w,
            bottom: 5.h,
            top: 10.h,
          ),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            fontFamily: AppTextStyles.fontFamily,
            color: AppColors.borderHintColor,
          ),
        ),
      ),
    );
  }
}
