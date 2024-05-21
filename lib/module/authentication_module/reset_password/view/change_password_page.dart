
import 'package:anatomy/module/authentication_module/reset_password/Widgets/text_form_field.dart';
import 'package:anatomy/module/authentication_module/reset_sucessfully/view/reset_sucessfully_page.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../../widgets/auth_btn.dart';
import '../../widgets/snack_bar.dart';
import '../controller/change_password_controller.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  const ResetPasswordPage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only( top: 70.h,left: 25.w, right: 25.w),
        child: Obx(() => Column(
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
              height: 13.h,
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
              height: 30.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppTexts.passwordEnterText,
                style: AppTextStyles.weightFour(
                  context: context,
                  fontSize: 13.sp,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),

          
               PasswordTextField(
                onPress: (text){
                  controller.changeContainerColor();
                },
                length: 8,
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
              ),
           

            SizedBox(
              height: 25.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppTexts.passwordConfirmText,
                style: AppTextStyles.weightFour(
                  context: context,
                  fontSize: 13.sp,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),

            
               PasswordTextField(
                onPress: (text){
                  controller.changeContainerColor();
                },
                length: 8,
                prefixIcon: Icons.lock_outline ,
                obscureText: controller.isCodeVisible.value,
                controller: controller.newPasswordController,
                text: AppTexts.confirmEmailText,
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
              ),
        

            SizedBox(
              height: 85.h,
            ),
            GestureDetector(
                onTap: () {

                  if (controller.passwordController.text.isEmpty ) {
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Please enter Password'
                    );
                  } else if(controller.newPasswordController.text.isEmpty){
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Please enter New Password'
                    );
                  } else if(controller.passwordController.text.length < 6 ){
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Password cannot be less then six '
                    );
                  }else if(controller.newPasswordController.text.length < 6 ){
                    customSnackBar(
                        backgroundColor: AppColors.cameraShodowColor,
                        title: 'Error',
                        message: 'Password cannot be less then six '
                    );
                  }else {
                    Get.off(const ResetSuccessFullyPage());
                  }

                },

                child: AuthBtn(
                  btnText: AppTexts.changePasswordText,
                  btnColor:controller.isContainerGrey.value ?AppColors.themeColor :AppColors.btnGreyColor,
                  btnBorderRadius: 8,
                  textColor: AppColors.whiteTextColor,
                  btnHeight: 45.h,
                  fontSize: 13.sp,
                )),
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
        ),)
      ),
    );
  }
}
