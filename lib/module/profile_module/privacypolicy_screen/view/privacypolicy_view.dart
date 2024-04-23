import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/privacypolicy_screen/controller/privacypolicy_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class PrivacyPolicyView extends GetView<PrivacypolicyController> {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
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
                 child: SvgPicture.asset(AppAssets.arrowBack,
                 color: Theme.of(context).appBarTheme.backgroundColor,)),
             Text(
               'Privacy Policy',
               style: TextStyle(
                 fontSize: 22.sp,
                 fontFamily: AppTextStyles.fontFamily,
                 color: Theme.of(context).appBarTheme.backgroundColor,
                 fontWeight: FontWeight.w700,
               ),),
             SizedBox(width:7.w),
           ],
         ),
         SizedBox(height: 39.h,),
         Text.rich(
           TextSpan(
             children: [
               TextSpan(
                 text: 'Lorem Ipsum',
                 style: AppTextStyles.weightSeven(
                   context: context,

                   fontSize: 12.sp,


                 ),
               ),
               TextSpan(
                 text: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries ularised in the 1960s.\nThe release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                 style: AppTextStyles.weightFour(
                   context: context,
                   height: 1.3.h,
                   fontSize: 12.sp,


                 ),
               ),
             ],
           ),
           textAlign: TextAlign.justify,
         ),
         SizedBox(height: 8.h,),
         Text.rich(
           TextSpan(
             children: [
               TextSpan(
                 text: 'Lorem Ipsum',
                 style: AppTextStyles.weightFour(
                   context: context,
                   height: 1.3.h,
                   fontSize: 12.sp,


                 ),
               ),
               TextSpan(
                 text: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, It was popularised in the 1960s.\nThe release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                 style: AppTextStyles.weightFour(
                   context: context,
                   height: 1.3.h,
                   fontSize: 12.sp,


                 ),
               ),
             ],
           ),
           textAlign: TextAlign.justify,
         ),
       ],
     ),
   ),
 );
  }
}
