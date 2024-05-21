import 'package:anatomy/module/authentication_module/widgets/snack_bar.dart';
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
      resizeToAvoidBottomInset: false,
   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only( top: 80.h,left: 26.w, right: 26.w),
        child: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                AppTexts.welcomeBackText,
                style: AppTextStyles.weightEight(
                  context: context,
                  fontSize: 21.sp,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: SizedBox(
                width: 225.w,
                child: Text(
                  AppTexts.staySignedText,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.weightFour(
                      fontSize: 13.sp,
                      context: context,
                      height: 1.3.h
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              AppTexts.emailText,
              style: AppTextStyles.weightFour(
                fontSize: 13.sp,
                context: context,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            MyTextFormField(
              onPress: (text){
                controller.changeContainerColor();
              },
              length: 20,
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              text: AppTexts.enterEmailText,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppTexts.passwordText,
              style: AppTextStyles.weightFour(
                fontSize: 13.sp,
                context: context,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            MyTextFormField(
                onPress: (text){
                  controller.changeContainerColor();
                },
                length: 8,
                keyboardType: TextInputType.text,
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
              ),

            Row(children: [
              SizedBox(
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

              Text(
                AppTexts.keepMeSignedText,
                style: AppTextStyles.weightFour(color: AppColors.borderHintColor,fontSize: 11.sp,context: context),
              ),
              const Spacer(),

              TextButton(onPressed: () {
                Get.off(const ForgotPasswordPage(),
                    binding: ForgotPasswordBinding());
              }, child: Text(
                AppTexts.forgotPasswordText,
                style: AppTextStyles.weightFour(context: context,
                    fontSize: 10.sp),
              ),) ,

            ]),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
                onTap: () {

                  if (controller.emailController.text.isEmpty ) {
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Please enter Email'
                    );
                  } else if(controller.passwordController.text.isEmpty){
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Please enter Password'
                    );
                  } else {
                    Get.off( QuestionPage(),
                        binding: QuestionBinding());
                  }

                },
                child: AuthBtn(
                  btnText: AppTexts.signInText,
                  btnColor:controller.isContainerGrey.value ?AppColors.themeColor :AppColors.btnGreyColor,
                  btnBorderRadius: 8,
                  textColor: AppColors.whiteTextColor,
                  btnHeight: 45.h,
                )),
            SizedBox(
              height: 30.h,
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
                      style: AppTextStyles.weightFour(
                        context: context,
                        fontSize: 12.sp,
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
                      style: AppTextStyles.weightFour(
                        context: context,
                        fontSize: 12.sp,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.doNotHaveAccountText,
                  style: AppTextStyles.weightFour(
                    context: context,
                    fontSize: 12.sp,
                  ),
                ),

                  TextButton(onPressed: () {
                    Get.off(const SignUpPage(), binding: SignUpBinding());
                  }, child: Text(
                    AppTexts.signUpText,
                    style: AppTextStyles.weightSix(
                      context: context,
                      fontSize: 13.sp,

                    ),
                  ),)
              ],
            )



              ]),
            ),


              )

    );
  }
}
