import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget{
  TextEditingController? controller;
  String? text;
  String? hintText;
  TextInputType? keyboardType;
  CustomTextField({super.key, this.controller,this.text,this.hintText,this.keyboardType});

  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text??"",
      style: AppTextStyles.weightFour(
        context: context,
        fontSize: 12.sp,
      ),),
      SizedBox(height: 12.h,),
      Container(
        height: 43.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderHintColor,width: 0.7)
        ),
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 25.w,bottom: 15.h,top: 15.h),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.borderHintColor,
              fontFamily: AppTextStyles.fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: 13.sp
            ),
          ),
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  );
  }
}