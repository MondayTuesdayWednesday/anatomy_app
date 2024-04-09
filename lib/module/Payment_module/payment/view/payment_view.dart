// PaymentView
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../Widgets/payment_selection_box.dart';
import '../controller/payment_controller.dart';


class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackTextColor,
      body:
        Padding(
          padding: EdgeInsets.only(
            top: 40.h,
            left: 30.w,
            right: 22.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteTextColor,
                  ),
                  child:  Center(child: SvgPicture.asset("assets/icons/arrow_left.svg",)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: 283.w,
                child: Text(
                  AppTexts.achieveGoalsText,
                  style: TextStyle(
                    color: AppColors.themeColor,
                    fontSize: 25.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 170.h,
                width: 300.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.iconList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 41.h,
                              width: 41.w,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteTextColor
                                      .withOpacity(0.4),
                                  border: Border.all(
                                      width: 0.5.w,
                                      color: AppColors.whiteTextColor),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(controller.iconList[index],fit: BoxFit.scaleDown,)),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 239.w,
                            child: Text(
                              controller.textList[index],
                              style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontSize: 11.sp,
                                fontFamily: AppTextStyles.fontFamily,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Pick a Subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: 305.w,
                height: 77.h,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: () {
                          controller.changeRadio(0);
                        },
                        child: const PaymentSelectionBox(0,
                           ),
                      ),
                    ),
                      Positioned(
                       right: 0,
                        top: 3.h,
                        child: Transform.rotate(
                          angle: 0.60,
                          child: Container(
                            width: 90.w,
                            height: 25.h,
                            decoration: const BoxDecoration(
                                color: AppColors.whiteTextColor,
                                borderRadius: BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Text(
                                'Saved \$2.99',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: AppTextStyles.fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  controller.changeRadio(1);
                },
                child: const PaymentSelectionBox(1,
                   ),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  controller.changeRadio(2);
                },
                child: const PaymentSelectionBox(2,
                   ),
              ),
            ],
          ),
        ),

    );
  }
}
