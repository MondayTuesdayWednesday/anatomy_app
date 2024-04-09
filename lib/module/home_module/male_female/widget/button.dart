import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  Function? onPressed;
  String? text;
  String? image;
   Button({super.key,this.text,this.image,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>onPressed!(),
      child: Column(
        children: [
          Container(
            width: 44.h,
            height: 44.w,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0xA3000000).withOpacity(0.1),
                  blurRadius: 12,
                  offset: Offset(3, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SvgPicture.asset(image!,fit: BoxFit.scaleDown,),
          ),
          SizedBox(height: 5.h,),
          SizedBox(
            width: 50.w,
            child: Text(text??"",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: AppColors.whiteTextColor,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              fontFamily: AppTextStyles.fontFamily
            ),),
          )
        ],
      ),
    );
  }
}
