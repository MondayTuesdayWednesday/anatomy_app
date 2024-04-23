
import 'package:anatomy/module/authentication_module/reset_password/Widgets/text_form_field.dart';
import 'package:anatomy/module/authentication_module/reset_sucessfully/view/reset_sucessfully_page.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../../signup/widgets/my_textform_field.dart';
import '../../widgets/auth_btn.dart';
import '../controller/change_password_controller.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  const ResetPasswordPage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top: 70.h,left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              SvgPicture.asset(AppAssets.forgetPageIcon,
              color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              height: 150.h,),
              SizedBox(height: 7.h,),
              Text(
                AppTexts.forgetPasswordText,
                style: AppTextStyles.weightEight(
                  context: context,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: SizedBox(
                  width: 210.w,
                  child: Text(
                    AppTexts.staySignedText,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.weightFour(
                      context: context,
                      height: 1.3.h,
                      fontSize: 11.sp,

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppTexts.emailText,
                  style: AppTextStyles.weightFour(
                    context: context,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),

              Obx(() {
                return PasswordTextField(
                  prefixIcon: Icons.lock_outline ,
                  obscureText: controller.isPasswordVisible.value,
                  controller: controller.passwordController,
                  text: AppTexts.enterEmailText,
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
                height: 19.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppTexts.emailText,
                  style: AppTextStyles.weightFour(
                    context: context,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),

              Obx(() {
                return PasswordTextField(
                  prefixIcon: Icons.lock_outline ,
                  obscureText: controller.isCodeVisible.value,
                  controller: controller.newPasswordController,
                  text: AppTexts.enterEmailText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.toggleCodeVisibility();
                    },
                    child: Icon(
                      controller.isCodeVisible.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.borderHintColor,
                      size: 18.h,
                    ),
                  ),
                );
              }),

              SizedBox(
                height: 90.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.off(const ResetSuccessFullyPage());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.changePasswordText,
                    btnColor: Theme.of(context).appBarTheme.foregroundColor??Colors.red,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                    fontSize: 13.sp,
                  )),
              SizedBox(
                height: 16.h,
              ),

              GestureDetector(
                onTap: () {
                  Get.off(const SignInPage() , binding: SignInBinding());
                },
                child: Text(
                  AppTexts.backToLoginText,
                  style: AppTextStyles.weightFour(
                    context: context,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
