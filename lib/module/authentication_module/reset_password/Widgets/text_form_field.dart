import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;


  const PasswordTextField(
      {super.key,
      required this.controller,
      required this.text,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 40.h,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderHintColor, width: 0.7),
          ),
      child: TextFormField(

        // textAlign: TextAlign.center,
        cursorColor: AppColors.whiteTextColor,
        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14.sp),
        obscureText: obscureText,
        controller: controller,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 10.w,
            bottom: 15.h,
            top: 15.h,
          ),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(prefixIcon,size: 20,color: Theme.of(context).appBarTheme.titleTextStyle?.color,),
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
