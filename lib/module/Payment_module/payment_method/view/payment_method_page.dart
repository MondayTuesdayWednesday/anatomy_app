import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/Payment_module/card_detail/binding/card_detail_binding.dart';
import 'package:anatomy/module/Payment_module/card_detail/view/card_detail_page.dart';
import 'package:anatomy/module/profile_module/appearance/binding/appearance_binding.dart';
import 'package:anatomy/module/profile_module/appearance/screen/appearance_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/payment_method_controller.dart';

class PaymentMethodPage extends GetView<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
     body: Center(
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 40.h),
         child: Column(
           children: [
             Align(
               alignment: Alignment.topLeft,
               child: GestureDetector(
                 onTap: () {
                   Get.back();
                 },
                 child:  Container(
                   height: 35.h,
                   width: 35.w,
                   decoration:  BoxDecoration(
                     shape: BoxShape.circle,
                     color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                   ),
                   child:  Center(child: SvgPicture.asset("assets/icons/arrow_left.svg",
                     color: Theme.of(context).primaryTextTheme.titleMedium?.color,)),
                 ),
               ),
             ),
             SizedBox(
               height: 40.h,
             ),
             Text("Payment Method",
               style: AppTextStyles.weightEight(
               context: context,
               fontSize: 22.sp
             ),),
             SizedBox(height: 15.h,),
             SizedBox(
               width: 220.w,
               child: Text("Stay signed in with your account to make searching easier",
                 textAlign: TextAlign.center,
                 style: AppTextStyles.weightFour(
                   context: context,
                 fontSize: 11.sp,
                   height: 1.3.h
               ),),
             ),
             SizedBox(height: 50.h,),
             GestureDetector(
               onTap: (){},
               child: Container(
                 height: 45.h,

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
                     Text("Google Pay",style: AppTextStyles.weightFour(
                       context: context,
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
     ),
   );
  }
}
