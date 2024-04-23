import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_text_styles.dart';
import '../../../common/app_texts.dart';
import '../../authentication_module/widgets/auth_btn.dart';
import '../controller/question_controller.dart';

class QuestionPage extends GetView<QuestionController> {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgThemeColor,
        body: Obx(
          () => Padding(
            padding: EdgeInsets.only(
              top: 40.h,
              left: 35.w,
              right: 35.w,
              bottom: 40.h
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controller.topicIndex >= 1
                    ? InkWell(
                        onTap: () {
                          controller.goToPreviousTopic();
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.whiteTextColor,
                          ),
                          child:  Center(child: SvgPicture.asset("assets/icons/arrow_left.svg",)),
                        ),
                      )
                    : SizedBox(
                        height: 45.h,
                      ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    "0${controller.topicIndex.value + 1}/0${controller.topics.length+1}",
                    style: AppTextStyles.weightSix(
                      context: context,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                LinearProgressIndicator(
                  value: controller.calculateProgress(),
                  color: AppColors.themeColor,
                  borderRadius: BorderRadius.circular(5),
                  minHeight: 7.h,
                  backgroundColor: AppColors.borderHintColor,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: SizedBox(
                    width: 210.w,
                    child: Text(
                      controller.topics[controller.topicIndex.value],
                      textAlign: TextAlign.center,
                      style: AppTextStyles.weightEight(
                        context: context,
                        fontSize: 20.sp,
                        height: 1.3.h
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 20.h),
                // Options
                SizedBox(
                  height: 310.h,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 18.0,
                            childAspectRatio: 1.1),
                    itemCount: controller.options.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(() => GestureDetector(
                            onTap: () => controller.selectOption( controller.options[index].answer) ,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 7.w),
                                    width: 180.w,
                                    decoration: BoxDecoration(
                                      gradient: RadialGradient(
                                        radius: 0.9,
                                        colors: [
                                          AppColors.whiteTextColor
                                              .withOpacity(0.2),
                                          AppColors.containerGradientColor
                                              .withOpacity(0.2)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color:
                                          controller
                                              .selectedOption.value==controller.options[index].answer
                                          ? AppColors.yellowColor
                                          :AppColors.whiteTextColor,width: 2.w),

                                      boxShadow: const [
                                        BoxShadow(
                                        blurStyle: BlurStyle.outer,
                                          color: AppColors.whiteTextColor,
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                    ),
                                    child: Column(

                                      children: [
                                        Container(
                                          height: 60.h,
                                          width: 85.w,
                                          decoration: const BoxDecoration(),
                                          child: Center(
                                              child: SvgPicture.asset(
                                            controller.options[index].imagePath,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13.h,
                                    child: Container(
                                      height: 32.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        color: controller.options[index].answer ==
                                                controller
                                                    .selectedOption.value
                                            ? AppColors.yellowColor
                                            : Colors.transparent,
                                      ),
                                      child: Center(
                                        child: Text(

                                          controller.options[index].answer,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily:
                                                AppTextStyles.fontFamily,
                                            color: AppColors.whiteTextColor,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                  ),
                ),
                 Spacer(),
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
        ));
  }
}
