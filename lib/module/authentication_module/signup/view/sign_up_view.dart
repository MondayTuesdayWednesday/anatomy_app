import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/common/app_texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../Questionary_View/binding/question_binding.dart';
import '../../../Questionary_View/view/questiona_view.dart';
import '../../signin/binding/sign_in_binding.dart';
import '../../signin/view/sign_in_view.dart';
import '../../widgets/auth_btn.dart';
import '../controller/sign_up_controller.dart';
import '../widgets/my_textform_field.dart';
class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top: 90.h,left: 26.w, right: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppTexts.createAnAccountText,
                  style: AppTextStyles.weightEight(
                    context: context,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Text(
                AppTexts.nameText,
                style: AppTextStyles.weightFour(
                  context: context,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MyTextFormField(
                controller: controller.nameController,
                text: AppTexts.enterNameText,
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                AppTexts.emailText,
                style: AppTextStyles.weightFour(
                  context: context,
                  fontSize: 12.sp,
                  ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MyTextFormField(
                controller: controller.emailController,
                text: AppTexts.enterEmailText,
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                AppTexts.passwordText,
                style: AppTextStyles.weightFour(
                  fontSize: 12.sp,
                  context: context
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Obx(() {
                return MyTextFormField(
                  obscureText: controller.isPasswordVisible.value,
                  controller: controller.passwordController,
                  text: AppTexts.enterPasswordText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.togglePasswordVisibility();
                    },
                    child: Icon(
                      controller.isPasswordVisible.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.borderHintColor,
                      size: 18.h,
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: Text(
                  AppTexts.passwordHelperText,
                  style: AppTextStyles.weightFour(
                    fontSize: 8.sp,
                    context: context,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.off(const QuestionPage(),
                        binding: QuestionBinding());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.signUpText,
                    btnColor: Theme.of(context).appBarTheme.foregroundColor??Colors.red,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                  )),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      height: 10.h,
                      thickness: 0.5,
                      color:Color(0xffE1E1E1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Text(
                      AppTexts.orText,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.weightFour(
                        color: AppColors.orTextColor,
                        fontSize: 13.sp,
                        context: context
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 20.h,
                      thickness: 0.5,
                      color:Color(0xffE1E1E1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  height: 40.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.70.w, color: AppColors.borderHintColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAssets.googleLogo),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppTexts.continueWithGoogleText,
                        style: AppTextStyles.weightFour(
                          fontSize: 12.sp,
                          context: context
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              GestureDetector(
                onTap: () {
                  //handle Functionality here
                },
                child: Container(
                  height: 40.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.70.w, color: AppColors.borderHintColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAssets.facebookLogo),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppTexts.continueWithFacebookText,
                        style: AppTextStyles.weightFour(
                          fontSize: 12.sp,
                          context: context
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: AppTexts.alreadyHaveAccountText,
                    style: AppTextStyles.weightFour(
                      context: context,
                      fontSize: 12.sp,
                    ),
                  ),
                  const TextSpan(text: ""),
                  TextSpan(
                    text: AppTexts.signInText,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.off(const SignInPage(), binding: SignInBinding());
                      },
                    style: AppTextStyles.weightSix(
                      context: context,
                      fontSize: 14.sp,
                    ),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
