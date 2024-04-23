import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const MyTextFormField({
    super.key,
    required this.controller,
    required this.text,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderHintColor, width: 0.7),
      ),
      child: TextFormField(
        cursorColor: AppColors.whiteTextColor,
        style: const TextStyle(color: AppColors.whiteTextColor),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.w, bottom: 15.h, top: 15.h),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            fontFamily: AppTextStyles.fontFamily,
            color: AppColors.borderHintColor,
          ),
        ),
      ),
    );
  }
}
