import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/authentication_module/widgets/auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_texts.dart';
class DoneView extends StatelessWidget {
  final String titleText;
  final String subTitle;
  final String descriptionText;
  final Function onPressed;
  String? buttonText;
   DoneView(
      {super.key,
        this.buttonText,
      required this.titleText,
      required this.subTitle,
      required this.descriptionText,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackTextColor,
      body: Padding(
        padding:
            EdgeInsets.only(top: 90.h, left: 35.w, right: 35.w, bottom: 50.h),
        child: Column(children: [
          SizedBox(
            width: 200.w,
            child: Text(
              titleText,
              textAlign: TextAlign.center,
              style: AppTextStyles.weightEight(
                height: 1.3.h,
               context: context,
                fontSize: 21.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 205,
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 140.h,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.whiteTextColor),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.done,
                color: AppColors.themeColor,
                size: 130,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 300.w,
            child: Text(
              descriptionText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
         Spacer(),
          GestureDetector(
            onTap: () => onPressed(),
            child: AuthBtn(
              fontSize: 13.sp,
                btnText: buttonText??AppTexts.nextText,
                btnColor: AppColors.btnGreyColor,
                btnBorderRadius: 8,
                textColor: AppColors.whiteTextColor,
                btnHeight: 45.h),
          )
        ]),
      ),
    );
  }
}
