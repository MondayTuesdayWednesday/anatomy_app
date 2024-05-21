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
  TextInputType? keyboardType;
   int? length;
  final Function(String)? onPress;


   MyTextFormField({
    super.key,
    required this.controller,
    required this.text,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
     this.length,
     this.onPress,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderHintColor, width: 0.7),
      ),
      child: TextFormField(
        onChanged:  onPress,
        textAlign: TextAlign.left,
        buildCounter: (
            BuildContext context, {
              required int currentLength,
              required bool isFocused,
              required int? maxLength,
            }) {
          return null; // Hide the counter
        },
        maxLength: length,
        keyboardType: keyboardType,
        cursorColor: AppColors.whiteTextColor,
        style: const TextStyle(color: AppColors.whiteTextColor),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.w, top: 17.h , bottom: 17.h),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
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
