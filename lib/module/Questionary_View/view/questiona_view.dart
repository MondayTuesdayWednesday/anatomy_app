import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_texts.dart';
import '../../authentication_module/widgets/auth_btn.dart';
import '../controller/question_controller.dart';

class QuestionPage extends GetView<QuestionController> {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            Colors.transparent, // Set background color to transparent
        body: Obx(
          () => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  controller.backgroundImages[controller.topicIndex
                      .value], //here when the topic is changed whether go to next or previous it does not change the background image
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 50.h,
                left: 35.w,
                right: 35.w,
                bottom: 50.h,
              ),
              child: Obx(
                () => Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.topicIndex >= 1
                                ? InkWell(
                                    onTap: () {
                                      controller.goToPreviousTopic();
                                    },
                                    child: Container(
                                      height: 45.h,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.whiteTextColor,
                                      ),
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: AppColors.blackTextColor,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 45.h,
                                  ),

                            Center(
                              child: Text(
                                controller.formatAnsweredCount(),
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColors.whiteTextColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            LinearProgressIndicator(
                              value: controller.calculateProgress(),
                              color: AppColors.themeColor,
                              borderRadius: BorderRadius.circular(5),
                              minHeight: 5.h,
                              backgroundColor: AppColors.borderHintColor,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Center(
                              child: SizedBox(
                                width: 210.w,
                                child: Text(
                                  controller
                                      .topics[controller.topicIndex.value],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.whiteTextColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.h),
                            // Options
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: controller
                                  .options[controller.topicIndex.value]
                                  .map((option) {
                                return GestureDetector(
                                  onTap: () => controller.selectOption(option),
                                  child: Container(
                                    width: 360.w,
                                    height: 40.h,
                                    margin: EdgeInsets.only(bottom: 20.h),
                                    decoration: BoxDecoration(
                                      color: option ==
                                              controller.selectedOption.value
                                          ? AppColors.whiteTextColor
                                          : AppColors.opacityGreyColor,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        width: 0.5,
                                        color: option ==
                                                controller.selectedOption.value
                                            ? AppColors.whiteTextColor
                                            : AppColors.borderHintColor,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        option,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: option ==
                                                  controller
                                                      .selectedOption.value
                                              ? AppColors.blackTextColor
                                              : AppColors.whiteTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 40.h),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.nextTopic();
                      },
                      child: AuthBtn(
                        btnText: AppTexts.nextText,
                        btnColor: AppColors.btnGreyColor,
                        btnBorderRadius: 8,
                        textColor: AppColors.whiteTextColor,
                        btnHeight: 45.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
