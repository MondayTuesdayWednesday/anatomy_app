import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/profile_module/languagesettings/controller/languagesettings_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_text_styles.dart';
class LanguagesettigsView extends GetView<LanguagesettingsController> {
  @override
  Widget build(BuildContext context) {

 return   Scaffold(
   backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                    child: SvgPicture.asset(AppAssets.arrowBack)),
                Text(
                  'Language Settings',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    color:AppColors.themeColor,
                    fontWeight: FontWeight.w700,
                  ),),
                SizedBox(width:2.w),
              ],
            ),
            SizedBox(height: 37.h,),
            SizedBox(
              width: 270.w,
              child:  Text(
                'Please select your native language',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  color:AppColors.whiteTextColor,
                  fontWeight: FontWeight.w500,
                ),),
            )
          ],
        ),
      ),
    );
  }
}
