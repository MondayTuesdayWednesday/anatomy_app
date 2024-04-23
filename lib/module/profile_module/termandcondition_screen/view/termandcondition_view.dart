import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/termandcondition_screen/controller/termandcondition_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
class TermConditionView extends GetView<TermandconditionController> {
  const TermConditionView({super.key});
  @override
  Widget build(BuildContext context) {
 return  Scaffold(
   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 20.w),
     child: Column(
       children: [
         SizedBox(height: 54.h,),
         Row(
           mainAxisAlignment:MainAxisAlignment.spaceBetween ,
           children: [
             GestureDetector(
               onTap: () {
                 Get.back();
               },
                 child: SvgPicture.asset(AppAssets.arrowBack,
                 color: Theme.of(context).appBarTheme.backgroundColor,)),
             Text(
               'Term and Conditions',
               style: AppTextStyles.weightSeven(
                 context: context,
                 fontSize: 20.sp,
                color: Theme.of(context).appBarTheme.backgroundColor
               ),),
             SizedBox(width:7.w),
           ],
         ),
     SizedBox(height: 25.h,),
     SizedBox(

       child: Text.rich(
         TextSpan(
           children: [
           TextSpan(
           text: 'Lorem Ipsum',
           style: AppTextStyles.weightSeven(context:context,
             fontSize: 12.sp,
           ),
         ),
         TextSpan(
           text: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.\nThe release of Letraset sheets containing Lorem Ipsum.",
         style: AppTextStyles.weightFour(
           context:context,
           fontSize: 12.sp,
           height: 1.3.h,

         ),
       ),
       ],
     ),
     textAlign: TextAlign.justify,
   ),
 ),
         SizedBox(height: 8.h,),
         SizedBox(

           child: Text.rich(
             TextSpan(
               children: [
                 TextSpan(
                   text: 'Lorem Ipsum',
                   style: AppTextStyles.weightFour(
                     context:context,
                     fontSize: 12.sp,
                     height: 1.3.h,

                   ),
                 ),
                 TextSpan(
                   text: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.\nThe release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                   style: AppTextStyles.weightFour(
                     context:context,
                     fontSize: 12.sp,
                     height: 1.3.h,

                   ),
                 ),
               ],
             ),
             textAlign: TextAlign.justify,
           ),
         ),
       ],
     ),
   ),
 );
  }
}
