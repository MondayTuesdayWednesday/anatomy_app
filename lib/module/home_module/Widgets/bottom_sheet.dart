import 'package:anatomy/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';


class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: 360.w,
      color: Colors.white,
      child: Column(

        children: [

          Padding(
            padding: EdgeInsets.only(right: 15.w , top: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 30.w),
                Container(
                  width: 100.w,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFB3B3B3),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                    child: Icon(Icons.close , color: AppColors.blackTextColor, size: 24.h,))
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Text(
          "Respiratory System",
          style: AppTextStyles.weightSeven(
            context: context,
            fontSize: 17.sp,
            color: AppColors.blackTextColor
          )

          ),

          SizedBox(height: 10.h),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              child: Text(
                  AppTexts.bottomSheetText,
                  style: AppTextStyles.weightFour(
                      context: context,
                      fontSize: 13.3.sp,
                      height: 1.h,
                      color: AppColors.blackTextColor
                  )

              ),
            ),
          )




        ],
      ),
    );
  }
}
