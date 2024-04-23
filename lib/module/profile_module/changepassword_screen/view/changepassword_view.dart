import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/changepassword_screen/controller/changepassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
class ChangePasswordView extends GetView<ChangepasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                     Get.back();
                    },
                    child: SvgPicture.asset(AppAssets.arrowBack),),
                  Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      color: AppColors.themeColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 7.w),
                ],
              ),
              SizedBox(height: 50.h),
              Text(
                'Old Password',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  color: AppColors.whiteTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                height: 43.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: AppColors.whiteTextColor.withOpacity(0.4),
                  ),
                ),
                child: Obx(() {
                  return TextFormField(
                    focusNode: controller.focusNode1,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(controller.focusNode2);
                    },
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    obscureText: controller.obscureText.value,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                      prefixIcon: Icon(Icons.lock_outline, color: AppColors.whiteTextColor, size: 16.h,),
                      suffixIcon: GestureDetector(
                        onTap: controller.toggleObscureText,
                        child: Icon(
                          controller.obscureText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          color: Colors.white,
                          size: 16.h,
                        ),
                      ),
                      hintText: "xxxxxxx",
                      hintStyle:  TextStyle(
                        color: AppColors.borderHintColor,
                        fontFamily: AppTextStyles.fontFamily,
                      ),
                      border: InputBorder.none,
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20.h),
              Text(
                'New Password',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  color: AppColors.whiteTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                height: 43.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: AppColors.whiteTextColor.withOpacity(0.4),
                  ),
                ),
                child: Center(
                  child: Obx(() {
                    return TextFormField(
                      focusNode: controller.focusNode2,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(controller.focusNode3);
                      },
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      obscureText: controller.newText.value,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                        prefixIcon: Icon(Icons.lock_outline, color: AppColors.whiteTextColor, size: 16.h,),
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleNewText,
                          child: Icon(
                            controller.newText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: Colors.white,
                            size: 16.h,
                          ),
                        ),
                        hintText: "xxxxxxx",
                        hintStyle:  TextStyle(
                          color: AppColors.borderHintColor,
                          fontFamily: AppTextStyles.fontFamily,
                        ),
                        border: InputBorder.none,
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  color: AppColors.whiteTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                height: 43.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: AppColors.whiteTextColor.withOpacity(0.4),
                  ),
                ),
                child: Center(
                  child: Obx(() {
                    return TextFormField(
                      focusNode: controller.focusNode3,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(controller.focusNode4);
                      },

                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      obscureText: controller.confirmText.value,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical:14.h),
                        prefixIcon: Icon(Icons.lock_outline, color: AppColors.whiteTextColor, size: 16.h,),
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleFirmText,
                          child: Icon(
                            controller.confirmText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: AppColors.whiteTextColor,
                            size: 16.h,
                          ),
                        ),
                        hintText: "xxxxxxx",
                        hintStyle: const TextStyle(
                          color: Color(0xffD0D0D0),
                          fontFamily: AppTextStyles.fontFamily,
                        ),
                        border: InputBorder.none,
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 205.h,),
              Container(
                height: 47.h,
                width: 310.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:AppColors.btnGreyColor,
                ),
                child:Center(
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      color:AppColors.whiteTextColor,
                      fontWeight: FontWeight.w500,
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
















//
// class PasswordFormField extends StatelessWidget {
//   final TextEditingController controller;
//   final TextEditingController newText;
//   final TextEditingController confirmText;
//   PasswordFormField({
//     required this.controller, required newText, required confirmText,
//   });
//   @override
//   Widget build(BuildContext context) {
//     final ChangepasswordController passwordController = Get.put(ChangepasswordController());
//     return Obx(
//           () => TextFormField(
//         controller: controller,
//         obscureText: passwordController.obscureText.value,
//
//         maxLengthEnforcement: MaxLengthEnforcement.enforced,
//         style: TextStyle(
//           color: Colors.white,
//           fontFamily: AppTextStyles.fontFamily,
//         ),
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.lock,color: AppColors.whiteTextColor,size: 20,),
//           suffixIcon: GestureDetector(
//             onTap: passwordController.toggleObscureText,
//             child: Icon(
//               passwordController.obscureText.value ? Icons.visibility_off : Icons.visibility,
//               color: Colors.white,
//             ),
//           ),
//           contentPadding: EdgeInsets.only(top:  25.0),
//           hintText: "8888888",
//           hintStyle: TextStyle(
//             color:Color(0xffD0D0D0),
//             fontFamily: AppTextStyles.fontFamily,
//           ),
//           border: InputBorder.none,
//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//           ),
//         ),
//       ),
//     );
//   }
// }