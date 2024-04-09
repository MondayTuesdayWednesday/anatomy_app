import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../../../Questionary_View/binding/question_binding.dart';
import '../../../Questionary_View/view/questiona_view.dart';
import '../../forget_password/binding/forgot_password_binding.dart';
import '../../forget_password/view/forgot_password_view.dart';
import '../../signup/binding/sign_up_binding.dart';
import '../../signup/view/sign_up_view.dart';
import '../../signup/widgets/my_textform_field.dart';
import '../../widgets/auth_btn.dart';
import '../controller/sign_in_controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top: 80.h,left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppTexts.welcomeBackText,
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 24.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
               Center(
                child: SizedBox(
                  width: 225,
                  child: Text(
                    AppTexts.staySignedText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppTexts.emailText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 14.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              MyTextFormField(
                controller: controller.emailController,
                text: AppTexts.enterEmailText,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppTexts.passwordText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 14.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 7.h,
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
              Row(children: [
                Obx(
                  () => SizedBox(
                    width: 34.w,
                    child: CheckboxListTile(
                      activeColor: AppColors.themeColor,
                      side: const BorderSide(color: AppColors.borderHintColor),
                      value: controller.isChecked2.value,
                      onChanged: (value) {
                        controller.isChecked2.value = value!;
                      },
                    ),
                  ),
                ),
                Text(
                  AppTexts.keepMeSignedText,
                  style: TextStyle(color: AppColors.borderHintColor),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.off(const ForgotPasswordPage(),
                        binding: ForgotPasswordBinding());
                  },
                  child: const Text(
                    AppTexts.forgotPasswordText,
                    style: TextStyle(color: AppColors.whiteTextColor),
                  ),
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.off(const QuestionPage(),
                        binding: QuestionBinding());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.signInText,
                    btnColor: AppColors.btnGreyColor,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      height: 10.h,
                      thickness: 0.5,
                      color: AppColors.borderHintColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Text(
                      AppTexts.orText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.borderHintColor,
                        fontSize: 16.sp,
                        fontFamily: AppTextStyles.fontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 20.h,
                      thickness: 0.5,
                      color: AppColors.borderHintColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  //add Functionality here
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  // add Here Functionality
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: AppTexts.dontHaveAccountText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  TextSpan(
                    text: AppTexts.signUpText,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.off(const SignUpPage(), binding: SignUpBinding());
                      },
                    style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontSize: 14.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w600,
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
