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
            width: 40.h,
            height: 40.w,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0xA3000000).withOpacity(0.1),
                  blurRadius: 12,
                  offset: Offset(3, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SvgPicture.asset(image!,fit: BoxFit.scaleDown,height: 20.h,),
          ),
          SizedBox(height: 5.h,),
          SizedBox(
            width: 50.w,
            child: Text(text??"",
              textAlign: TextAlign.center,
              style: AppTextStyles.weightFour(
                context: context,
                fontSize: 9.5.sp,
                height: 1.h

              ),
            ),
          ),

        ],
      ),
    );
  }
}
