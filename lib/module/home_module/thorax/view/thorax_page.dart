import 'package:anatomy/module/home_module/thorax/controller/thorax_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';

class ThoraxPage extends GetView<ThoraxController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(AppAssets.arrowBack)),
                SizedBox(
                  width: 260.w,
                  child: Text("Thorax",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.themeColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppTextStyles.fontFamily
                    ),),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            Container(
              height: 37.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.whiteTextColor,width: 0.5),
                  boxShadow:  const [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ]
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 5.h),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search,size: 20,color: AppColors.searchIconColor,),
                      hintText:  'Search here...',
                      hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppTextStyles.fontFamily,
                          color: AppColors.searchIconColor
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(child: GridView.builder(
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 42,
                  mainAxisSpacing: 15
              ),
              itemCount: controller.imageList.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 127.w,
                      height: 121.h,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: const Alignment(0, 1),
                          radius: 0,
                          colors: [AppColors.whiteTextColor.withOpacity(0.2), const Color(0xFF999999).withOpacity(0.2)],
                        ),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.whiteTextColor,width: 2),
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: AppColors.whiteTextColor,
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Image.asset(controller.imageList[index]),
                    ),
                    SizedBox(height: 12.h,),
                    Center(
                      child: Stack(
                        children: <Widget>[
                          Text(
                            controller.textList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = AppColors.themeColor,
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            controller.textList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.whiteTextColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },))

          ],
        ),
      ),
    );
  }

}