
import 'package:anatomy/module/authentication_module/change_password/controller/change_password_controller.dart';
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

class ChangePasswordPage extends GetView<ChangePasswordController> {
  const ChangePasswordPage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bgThemeColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top: 80.h,left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              SvgPicture.asset(AppAssets.forgetPageIcon),
              Text(
                AppTexts.forgetPasswordText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 24.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: SizedBox(
                  width: 210,
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppTexts.emailText,
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 14.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),

              Obx(() {
                return MyTextFormField(
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
                height: 20.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppTexts.emailText,
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 14.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),

              Obx(() {
                return MyTextFormField(
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
                    Get.off(ResetSuccessFullyPage());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.changePasswordText,
                    btnColor: AppColors.btnGreyColor,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                    fontSize: 14.sp,
                  )),
              SizedBox(
                height: 20.h,
              ),

              GestureDetector(
                onTap: () {
                  Get.off(SignInPage() , binding: SignInBinding());
                },
                child: Text(
                  AppTexts.backToLoginText,
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 14.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w400,
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
