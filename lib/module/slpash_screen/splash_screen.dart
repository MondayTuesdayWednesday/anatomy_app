import 'dart:async';
import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/common/app_texts.dart';
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
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 190.h , bottom: 40.h  ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppAssets.splashImage,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(AppTexts.kumarAnatomyText,
                style: AppTextStyles.weightEight(
                  context: context,
                  fontSize: 32.sp,
                  letterSpacing: -1.60,
                )),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppTexts.exploreYourOwnText,
              style: AppTextStyles.weightSeven(
                context: context,
                color: AppColors.whiteTextColor,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.52,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Text(
                    AppTexts.poweredByText,
                    style: AppTextStyles.weightSeven(
                        context: context,
                        color: AppColors.whiteTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.6),
                  ),
                  Container(
                    height: 20.h,
                    width: 175.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: AppColors.whiteTextColor),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Center(
                        child: Text(
                          AppTexts.americanHeartText,
                          style: AppTextStyles.weightSeven(
                              context: context,
                              color: AppColors.blackTextColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.68),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
