import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/profile_module/splash_screen/controller/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_text_styles.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:Theme.of(context).scaffoldBackgroundColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 20.w),
       child: Column(
         children: [
           SizedBox(height: 45.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               GestureDetector(
                 onTap: () {
                   Get.back();
                 },
                   child: SvgPicture.asset(AppAssets.arrowBack,color: Theme.of(context).appBarTheme.foregroundColor,)),
               Text(
                 'App Info',
                 style: TextStyle(
                   fontSize: 22.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color: Theme.of(context).appBarTheme.foregroundColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width:5.w),
             ],
           ),
           SizedBox(height: 80.h,),
           SvgPicture.asset(AppAssets.splashImage,
           color: Theme.of(context).appBarTheme.titleTextStyle?.color,
           height: 168.h,
          ),
           SizedBox(height: 12.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.center ,
             children: [
               Text(
                 'Kumar Anatomy',
                 style: AppTextStyles.weightSeven(
                   fontSize:27.sp,
                   context: context,
                 ),),
             ],
           ),
           SizedBox(height: 10.h,),
           Padding(
             padding:  EdgeInsets.only(right: 10.w),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 // SizedBox(width: 168.w,),
                 Container(
                   height: 20.h,
                   width: 95.w,
                   decoration: BoxDecoration(
                     color:Theme.of(context).appBarTheme.backgroundColor,
                     borderRadius: BorderRadius.circular(2),
                   ),

                   child: Center(
                     child: Text(
                       "App Version",
                       style: TextStyle(
                         fontSize:12.sp,
                         fontFamily: AppTextStyles.fontFamily,
                         color:Theme.of(context).primaryTextTheme.titleMedium?.color,
                         fontWeight: FontWeight.w700,
                       ),),
                   ),
                 ),
                 SizedBox(width: 6.w,),
                 Text(
                   "2.0",
                   style: AppTextStyles.weightSeven(
                     fontSize:13.sp,
                     context: context
                   ),),
                 SizedBox(width: 20.w,),
               ],
             ),
           ),
           SizedBox(height: 30.h,),
           SizedBox(
             child: Text(
               textAlign: TextAlign.center,
               "Lorem ipsum dolor sit amet, consectetur adipiscing dolor sit amet elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing dolor sit amet elit, sed do eiusmod",
               style: AppTextStyles.weightFour(
                 fontSize:13.sp,
                 height: 1.3.h,
                 context: context
               ),),
           )
         ],
       ),
     ),
   );
  }
}
