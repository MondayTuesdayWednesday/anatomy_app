import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/regional_anatomy/controller/regional_anatomy_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';

class RegionalAnatomyPage extends GetView<RegionalAnatomyController>{
  const RegionalAnatomyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(AppAssets.arrowBack)),
                SizedBox(
                  width: 260.w,
                  child: Text("Regional Anatomy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: AppColors.themeColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppTextStyles.fontFamily
                  ),),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                  childAspectRatio: 0.67,
                  crossAxisSpacing: 60,
                  mainAxisSpacing: 15
            ),
              itemCount: controller.imageList.length,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                     onTap: () {
                       switch(index){
                         case 0:
                           {

                           }
                         case 1:
                           {

                           }
                         case 2:
                           {

                           }
                         case 3:
                           {

                           }
                         case 4:
                           {

                           }
                         case 5:
                           {

                           }
                         case 6:
                           {

                           }
                         case 7:
                           {

                           }
                         case 8:
                           {

                           }
                         case 9:
                           {

                           }
                       }
                     },
                    child: Container(
                      width: 121.w,
                      height: 121.h,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: const Alignment(0, 1),
                          radius: 0,
                          colors: [AppColors.whiteTextColor.withOpacity(0.2), const Color(0xFF999999).withOpacity(0.2)],
                        ),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.whiteTextColor,width: 2),
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: AppColors.whiteTextColor,
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Image.asset(controller.imageList[index]),
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Stack(
                    children: <Widget>[
                      Text(
                        controller.textList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.sp,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = AppColors.themeColor,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        controller.textList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },))
            
          ],
        ),
      ),
    );
  }

}