import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/Payment_module/card_detail/controller/card_detail_controller.dart';
import 'package:anatomy/module/Payment_module/welcome/payment_done_view.dart';
import 'package:anatomy/module/authentication_module/widgets/auth_btn.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_text_styles.dart';
import '../widget/custom_text_field.dart';
class CardDetailPage extends GetView<CardDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 27.w,right: 27.w,bottom: 40.h,top: 40.h),
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
                height: 30.h,
              ),
              Text(
                "Card Detail",
                style: AppTextStyles.weightEight(
                  context: context,
                    fontSize: 22.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                keyboardType: TextInputType.name,
                controller: controller.nameController,
                text: "Name on Card",
                hintText: "jonson",
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                controller: controller.cardController,
                text: "Card Number",
                hintText: "112345678",
              ),
              CustomTextField(
                keyboardType: TextInputType.datetime,
                controller: controller.expiryController,
                text: "Expiry Date",
                hintText: "06-08-2050",
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                controller: controller.cvvController,
                text: "CVV",
                hintText: "xxxxx",
              ),
              SizedBox(height: 120.w,),
              GestureDetector(
                onTap: (){
                  if (controller.areFieldsFilled()) {
                    Get.off(const PaymentDoneView());
                  } else {
                    Get.snackbar(
                      'Incomplete Form',
                      'Please complete all fields',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.transparent,
                      colorText: Colors.white,
                    );
                  }
                },
                child: AuthBtn(
                    btnText: "Next",
                    btnColor: (controller.areFieldsFilled())?AppColors.themeColor:Theme.of(context).appBarTheme.foregroundColor??Colors.red,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 50.h),
              )
            ],
          ),
        ),
      ),
    );
  }
}
