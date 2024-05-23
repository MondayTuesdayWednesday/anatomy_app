import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/regional_anatomy/controller/regional_anatomy_controller.dart';
import 'package:anatomy/module/home_module/regional_module/cardiovascular/binding/cardiovascular_binding.dart';
import 'package:anatomy/module/home_module/regional_module/cardiovascular/view/cardiovascular_page.dart';
import 'package:anatomy/module/home_module/regional_module/eye/binding/eye_binding.dart';
import 'package:anatomy/module/home_module/regional_module/eye/view/eye_page.dart';
import 'package:anatomy/module/home_module/regional_module/female_breasts/binding/female_breast_binding.dart';
import 'package:anatomy/module/home_module/regional_module/female_breasts/view/female_breast_page.dart';
import 'package:anatomy/module/home_module/regional_module/female_urogenital/binding/female_urogenital_binding.dart';
import 'package:anatomy/module/home_module/regional_module/female_urogenital/view/female_urogenital_page.dart';
import 'package:anatomy/module/home_module/regional_module/gastrointestinal/binding/gastrointestinal_binding.dart';
import 'package:anatomy/module/home_module/regional_module/gastrointestinal/view/gastrointestinal_page.dart';
import 'package:anatomy/module/home_module/regional_module/male_urogenital/binding/male_urogenital_binding.dart';
import 'package:anatomy/module/home_module/regional_module/male_urogenital/view/male_urogenital_page.dart';
import 'package:anatomy/module/home_module/regional_module/muscular/binding/muscular_binding.dart';
import 'package:anatomy/module/home_module/regional_module/muscular/view/muscular_page.dart';
import 'package:anatomy/module/home_module/regional_module/nervous/binding/nervous_binding.dart';
import 'package:anatomy/module/home_module/regional_module/nervous/view/nervous_page.dart';
import 'package:anatomy/module/home_module/regional_module/respiratory/binding/respiratory_binding.dart';
import 'package:anatomy/module/home_module/regional_module/respiratory/view/respiratory_page.dart';
import 'package:anatomy/module/home_module/regional_module/skeleton/binding/skeleton_binding.dart';
import 'package:anatomy/module/home_module/regional_module/skeleton/view/skeleton_view.dart';
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
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                IconButton(onPressed: () => Get.back(), icon: SvgPicture.asset(AppAssets.arrowBack)),

                SizedBox(
                  width: 200.w,
                  child: Text("Regional Anatomy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.themeColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppTextStyles.fontFamily
                    ),),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: GridView.builder(
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
                             Get.to(MuscularPage(),binding: MuscularBinding());
                           }
                         case 1:
                           {
                             Get.to(SkeletonView(),binding: SkeletonBinding());
                           }
                         case 2:
                           {
                             Get.to(CardiovascularPage(),binding: CardiovascularBinding());
                           }
                         case 3:
                           {
                             Get.to(NervousPage(),binding: NervousBinding());
                           }
                         case 4:
                           {
                             Get.to(RespiratoryPage(),binding: RespiratoryBinding());
                           }
                         case 5:
                           {
                             Get.to(GastrointestinalPage(),binding: GastrointestinalBinding());
                           }
                         case 6:
                           {
                             Get.to(MaleUrogenitalPage(),binding: MaleUrogenitalBinding());
                           }
                         case 7:
                           {
                             Get.to(FemaleUrogenitalPage(),binding: FemaleUrogenitalBinding());
                           }
                         case 8:
                           {
                             Get.to(EyePage(),binding: EyeBinding());
                           }
                         case 9:
                           {
                             Get.to(FemaleBreastPage(),binding: FemaleBreastBinding());
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
            },),
          ))

        ],
      ),
    );
  }

}