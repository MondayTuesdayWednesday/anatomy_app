import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../../reset_password/Widgets/text_form_field.dart';
import '../../reset_password/binding/change_password_binding.dart';
import '../../reset_password/view/change_password_page.dart';
import '../../signup/widgets/my_textform_field.dart';
import '../../widgets/auth_btn.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bgThemeColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top: 70.h,left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              SvgPicture.asset(AppAssets.forgetPageIcon,
              height: 150.h,),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppTexts.forgetPasswordText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 20.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Center(
                child: SizedBox(
                  width: 180.w,
                  child: Text(
                    AppTexts.staySignedText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppTexts.emailText,
                  style: AppTextStyles.weightFour(
                    fontSize: 12.sp,
                    context: context,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              PasswordTextField(
                controller: controller.emailController,
                text: AppTexts.enterEmailText,
                prefixIcon: Icons.mail_outline ,

              ),


              SizedBox(
                height: 150.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.off(ResetPasswordPage() , binding: ResetPasswordBinding());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.sendEmailText,
                    btnColor: AppColors.btnGreyColor,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                    fontSize: 13.sp,
                  )),
              SizedBox(
                height: 15.h,
              ),

              GestureDetector(
                onTap: () {
                  Get.off(SignInPage() , binding: SignInBinding());
                },
                child: Text(
                  AppTexts.backToLoginText,
                  style: AppTextStyles.weightFour(
                    context: context,
                    fontSize: 13.sp,

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
