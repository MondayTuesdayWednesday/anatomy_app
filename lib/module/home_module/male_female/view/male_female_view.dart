import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/male_female/controller/male_female_controller.dart';
import 'package:anatomy/module/home_module/male_female/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class MaleFemaleView extends GetView<MaleFemaleController>{
   const MaleFemaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.only(left: 20.w,right: 20.w,bottom: 30.h),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100.w,
                  child: Row(
                    children: [
                      SizedBox(width: 15.w,),
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 22.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.whiteTextColor,width: 1.w),
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 5.w),
                            child: Icon(Icons.arrow_back_ios,size: 12,color: AppColors.whiteTextColor,),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Text("Back",style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontFamily: AppTextStyles.fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp
                      ),)
                    ],
                  ),
                ),
                SizedBox(
                  width: 90.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add,size: 26,color: AppColors.whiteTextColor,),
                      Text("Reset",style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.w600,
                          fontSize: 19.sp
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              width: 310.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(
                    onPressed: (){
                      print("object");
                    },
                    text: "Hide others",image: "assets/icons/visibility_off.svg",),
                  Button(
                    onPressed: (){},
                    text: "Hide",image: "assets/icons/visibility_off.svg", ),
                  Button(
                    onPressed: (){},
                    text:  "Isolate", image:  "assets/icons/isolate.svg",),
                  Button(
                    onPressed: (){},
                    text:  "Fade others",image: "assets/icons/fade_others.svg",),
                  Button(
                    onPressed: (){},
                    text:  "Fade",image:  "assets/icons/fade.svg",),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}