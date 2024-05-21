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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Obx(
          () => Padding(
            padding: EdgeInsets.only(
              top: 45.h,
              left: 35.w,
              right: 35.w,
              bottom: 35.h
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
                          height: 35.h,
                          width: 35.w,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                          ),
                          child:  Center(child: SvgPicture.asset("assets/icons/arrow_left.svg",
                          color: Theme.of(context).primaryTextTheme.titleMedium?.color,)),
                        ),
                      )
                    : SizedBox(
                        height: 35.h,
                      ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    "0${controller.topicIndex.value + 1}/ 0${controller.topics.length}",
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
                  backgroundColor: Theme.of(context).colorScheme.background,
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
                    height: 20.h), // Options
                SizedBox(
                  height: 310.h,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 30.0,
                            childAspectRatio: 1.15),
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
                                         Theme.of(context).primaryTextTheme.titleSmall?.color??Colors.red,
                                         Theme.of(context).primaryTextTheme.titleLarge?.color??Colors.red,

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
                                        SizedBox(height: 10.h,),
                                        SvgPicture.asset(
                                          fit: BoxFit.scaleDown,
                                          height: 50.h,
                                          controller.options[index].imagePath,
                                          color: controller.options[index].answer==controller.selectedOption.value
                                            ?Theme.of(context).iconTheme.color
                                            :Theme.of(context).appBarTheme.titleTextStyle?.color,
                                                                                  )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13.h,
                                    child: Container(
                                      height: 27.h,
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
                                          style: AppTextStyles.weightEight(
                                            context: context,
                                            fontSize: 10.sp,
                                            color: controller.options[index].answer==controller.selectedOption.value
                                              ?AppColors.whiteTextColor
                                              :Theme.of(context).appBarTheme.titleTextStyle?.color
                                        ),
                                      ),
                                    ),
                                  ),
                                  ) ],
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
                    btnColor: controller.isOptionSelected.value?AppColors.themeColor :AppColors.btnGreyColor,
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