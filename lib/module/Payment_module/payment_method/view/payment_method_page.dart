import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/Payment_module/card_detail/binding/card_detail_binding.dart';
import 'package:anatomy/module/Payment_module/card_detail/view/card_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/payment_method_controller.dart';

class PaymentMethodPage extends GetView<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.bgThemeColor,
     body: Center(
       child: Column(
         children: [
           SizedBox(
             height: 90.h,
           ),
           Text("Payment Method",
             style: TextStyle(
             color: AppColors.whiteTextColor,
             fontFamily: AppTextStyles.fontFamily,
             fontWeight: FontWeight.w800,
             fontSize: 22.sp
           ),),
           SizedBox(height: 15.h,),
           SizedBox(
             width: 220.w,
             child: Text("Stay signed in with your account to make searching easier",
               textAlign: TextAlign.center,
               style: TextStyle(
               fontSize: 12.sp,
               fontWeight: FontWeight.w400,
               fontFamily: AppTextStyles.fontFamily,
               color: AppColors.whiteTextColor
             ),),
           ),
           SizedBox(height: 50.h,),
           GestureDetector(
             onTap: (){},
             child: Container(
               height: 45.h,
               width: 300.w,
               decoration: BoxDecoration(
                 color: Colors.transparent,
                 border: Border.all(color: AppColors.borderHintColor,
                 ),
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SvgPicture.asset(AppAssets.googleLogo),
                   SizedBox(width: 5.w,),
                   Text("Google Pay",style: TextStyle(
                     color: AppColors.whiteTextColor,
                     fontFamily: AppTextStyles.fontFamily,
                     fontWeight: FontWeight.w400,
                     fontSize: 12.sp
                   ),)
                 ],
               ),
             ),
           ),
           SizedBox(
             height: 20.h,
           ),
           GestureDetector(
             onTap: (){
               Get.off(CardDetailPage(),binding: CardDetailBinding());},
             child: Container(
               height: 45.h,
               width: 300.w,
               decoration: BoxDecoration(
                 color: AppColors.yellowColor,
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("stripe",style: TextStyle(
                     color: Color(0xff635BFF),
                     fontFamily: AppTextStyles.fontFamily,
                     fontWeight: FontWeight.w900,
                     fontSize: 12.sp
                   ),),
                   SizedBox(width: 5.w,),
                   Text("Stripe",style: TextStyle(
                     color: AppColors.blackTextColor,
                     fontSize: 13.sp,
                     fontWeight: FontWeight.w400,
                     fontFamily: AppTextStyles.fontFamily
                   ),)
                 ],
               ),
             ),
           ),

         ],
       ),
     ),
   );
  }
}