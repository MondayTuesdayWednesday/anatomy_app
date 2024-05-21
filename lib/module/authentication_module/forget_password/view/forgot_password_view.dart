import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
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
import '../../widgets/auth_btn.dart';
import '../../widgets/snack_bar.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only( top: 70.h,left: 25.w, right: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.forgetPageIcon,
            color: Theme.of(context).appBarTheme.titleTextStyle?.color,
            height: 150.h,),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppTexts.forgetPasswordText,
              style: AppTextStyles.weightEight(
                context: context,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
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
              height: 26.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppTexts.emailText,
                style: AppTextStyles.weightFour(
                  fontSize: 13.sp,
                  context: context,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            PasswordTextField(
              onPress: (text) {
                controller.changeContainerColor();
              },
              length: 25,
              controller: controller.emailController,
              text: AppTexts.enterEmailText,
              prefixIcon: Icons.mail_outline ,

            ),


            SizedBox(
              height: 150.h,
            ),
            GestureDetector(
                onTap: () {
                  if (controller.emailController.text.isEmpty ) {
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Please enter Email'
                    );
                  }  else {
                    Get.off(const ResetPasswordPage() , binding: ResetPasswordBinding());
                  }

                },
                child: Obx(() => AuthBtn(
                  btnText: AppTexts.sendEmailText,
                  btnColor:controller.isContainerGrey.value ?AppColors.themeColor :AppColors.btnGreyColor,
                  btnBorderRadius: 8,
                  textColor: AppColors.whiteTextColor,
                  btnHeight: 45.h,
                  fontSize: 13.sp,
                ))
            ),
            SizedBox(
              height: 5.h,
            ),


            TextButton(onPressed: () {
              Get.off(const SignInPage() , binding: SignInBinding());
            }, child: Text(
              AppTexts.backToLoginText,
              style: AppTextStyles.weightFour(
                context: context,
                fontSize: 12.sp,

              ),
            ),)


          ],
        ),
      ),
    );
  }
}
