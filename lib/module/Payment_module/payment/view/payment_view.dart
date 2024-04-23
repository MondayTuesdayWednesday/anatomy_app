// PaymentView
import 'package:anatomy/module/profile_module/appearance/binding/appearance_binding.dart';
import 'package:anatomy/module/profile_module/appearance/screen/appearance_page.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                child:  Container(
                  height: 40.h,
                  width: 40.w,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                  ),
                  child:  Center(child: SvgPicture.asset("assets/icons/arrow_left.svg",
                    color: Theme.of(context).primaryTextTheme.titleMedium?.color,)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: 283.w,
                child: GestureDetector(
                  onTap: (){
                    Get.to(AppearancePage(),binding: AppearanceBinding());
                  },
                  child: Text(
                    AppTexts.achieveGoalsText,
                    style: TextStyle(
                      color:Theme.of(context).appBarTheme.backgroundColor,
                      fontSize: 25.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w700,
                    ),
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
                      padding:  EdgeInsets.only(bottom: 15.h),
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
                                      color: Theme.of(context).appBarTheme.titleTextStyle!.color!),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(controller.iconList[index],fit: BoxFit.scaleDown,color: Theme.of(context).appBarTheme.titleTextStyle?.color,),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 239.w,
                            child: Text(
                              controller.textList[index],
                              style: AppTextStyles.weightFour(
                                context: context,
                                fontSize: 10.sp,
                                height: 1.3.h
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
                style: AppTextStyles.weightSix(
                  fontSize: 13.sp,
                  context: context
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
                            decoration:  BoxDecoration(
                                color: Theme.of(context).appBarTheme.surfaceTintColor,
                                borderRadius: BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Text(
                                'Saved \$2.99',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Theme.of(context).primaryTextTheme.titleMedium?.color,
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
