import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/Payment_module/card_detail/controller/card_detail_controller.dart';
import 'package:anatomy/module/Payment_module/payment_method/widget/custom_text_field.dart';
import 'package:anatomy/module/Payment_module/welcome/payment_done_view.dart';
import 'package:anatomy/module/authentication_module/widgets/auth_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_text_styles.dart';

class CardDetailPage extends GetView<CardDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90.h,
              ),
              Text(
                "Card Detail",
                style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w800,
                    fontSize: 22.sp),
              ),
              SizedBox(
                height: 25.h,
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
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: (){
                  Get.off(PaymentDoneView());
                },
                child: AuthBtn(
                    btnText: "Next",
                    btnColor: AppColors.btnGreyColor,
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
