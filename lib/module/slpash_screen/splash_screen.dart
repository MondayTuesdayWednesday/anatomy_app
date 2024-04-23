import 'dart:async';
import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/common/app_texts.dart';
import 'package:anatomy/module/profile_module/appearance/binding/appearance_binding.dart';
import 'package:anatomy/module/profile_module/appearance/screen/appearance_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../authentication_module/set_profile/binding/set_profile_binding.dart';
import '../authentication_module/set_profile/view/set_profile_view.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const SetProfileImagePage(), binding: SetProfileBinding());
    });
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only( top: 190.h ,left: 40.w,right: 40.w,bottom: 50.h),
        child: Column(
          children: [
            SvgPicture.asset(
              AppAssets.splashImage,
              color: Theme.of(context).appBarTheme.titleTextStyle?.color,

            ),
            SizedBox(
              height: 18.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(AppTexts.kumarAnatomyText,
                  style: AppTextStyles.weightEight(
                    context: context,
                    fontSize: 28.sp,
                  )),
            ),
            SizedBox(
              height: 12.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppTexts.exploreYourOwnText,
                style: AppTextStyles.weightSeven(
                  context: context,
                  fontSize: 13.sp,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.poweredByText,
                  style: AppTextStyles.weightSeven(
                      context: context,
                      fontSize: 12.sp,
                  ),
                ),
                Container(
                  height: 22.h,
                  width: 170.w,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color:Theme.of(context).appBarTheme.titleTextStyle?.color),
                  child: Center(
                    child: Text(
                      AppTexts.americanHeartText,
                      style: AppTextStyles.weightSeven(
                          context: context,
                          color:  Theme.of(context).primaryTextTheme.titleMedium?.color,
                          fontSize: 11.sp,
                          ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
