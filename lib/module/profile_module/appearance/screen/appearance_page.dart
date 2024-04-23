import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../controller/appearance_controller.dart';
import '../widget/themeContainer.dart';

class AppearancePage extends GetView<AppearanceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body:  Container(
          height: 690.h,
          width: 360.w,
          decoration: BoxDecoration(
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 25.h,
                        color:
                           Theme.of(context).appBarTheme.backgroundColor,
                      ),
                    ),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        "Appearance",
                        style: AppTextStyles.weightSeven(
                            fontSize: 20.sp, context: context,color:   Theme.of(context).appBarTheme.backgroundColor,),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Select Theme",
                  style: AppTextStyles.weightSix(
                      fontSize: 15.sp, context: context),
                ),
                ThemeContainerWidget(
                    "default", 1, Icons.tonality_rounded, () {
                  controller.changeTheme(ThemeModeOptions.systemDefault);
                }),
                ThemeContainerWidget(
                    "Dark", 2, Icons.dark_mode_outlined,
                    () {
                  controller.changeTheme(ThemeModeOptions.dark);
                }),
                ThemeContainerWidget(
                  "Light", 3, Icons.light_mode_outlined,
                    () {
                  controller.changeTheme(ThemeModeOptions.light);
                }),
              ],
            ),
          ),

      ),
    );
  }
}
