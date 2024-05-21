import 'package:anatomy/common/app_assets.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_texts.dart';
import '../../../../common/app_text_styles.dart';
import '../../signup/binding/sign_up_binding.dart';
import '../../signup/view/sign_up_view.dart';
import '../../widgets/auth_btn.dart';
import '../controller/set_profile_controller.dart';

class SetProfileImagePage extends GetView<SetProfileController> {
  const SetProfileImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 130.h, left: 30.w, right: 30.w),
        child: Column(
          children: [
            SizedBox(
              width: 250.w,
              child: Text(
                AppTexts.chooseProfileText,
                textAlign: TextAlign.center,
                style: AppTextStyles.weightEight(
                  context: context,
                  height: 1.3.h,
                  fontSize: 18.sp,

                ),
              ),
            ),
            SizedBox(

              height: 60.h,
            ),
            Stack(
                children: [

                  Obx(() {
                    final imagePath = controller.imagePath.value;
                    return imagePath.isNotEmpty
                        ? Center(
                          child: CircleAvatar(
                                                radius: 70.w, // Use screen adaptation if necessary
                                                backgroundImage: FileImage(
                          File(imagePath),
                                                ),
                                              ),
                        )
                        : Center(
                          child: SvgPicture.asset(
                                                AppAssets.profileIcon,
                                                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                                                height: 145.h, // Use screen adaptation if necessary
                                              ),
                        );
                  }),


              Positioned(
                bottom: 5.h,
                right: 80.w,

                child: InkWell(
                  onTap: () {
                    controller.getImage();
                  },
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration:  BoxDecoration(
                      color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.cameraShodowColor,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child:  Center(
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 22.h,
                        color: Theme.of(context).primaryTextTheme.titleMedium?.color,
                      ),
                    ),
                  ),
                ),
              ),

            ]),
             SizedBox(
              height: 150.h,
            ),
            GestureDetector(
              onTap: () {  Get.off(  const SignUpPage(), binding: SignUpBinding());
    },

              child: AuthBtn(
                fontSize: 13.sp,
                btnText: AppTexts.createAccountText,
                btnColor: Theme.of(context).appBarTheme.foregroundColor??Colors.red,
                btnBorderRadius: 8,
                textColor: AppColors.whiteTextColor,
                btnHeight: 45.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
