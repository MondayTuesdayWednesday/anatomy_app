import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/male_female/binding/male_female_binding.dart';
import 'package:anatomy/module/home_module/male_female/view/male_female_view.dart';
import 'package:anatomy/module/home_module/regional_anatomy/binding/regional_anatomy_binding.dart';
import 'package:anatomy/module/home_module/regional_anatomy/view/regional_anatomy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../controller/home_view_controller.dart';

class HomePageView extends GetView<HomeViewController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h,),
            Text("Welcome",style: TextStyle(
              color: AppColors.themeColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              fontFamily: AppTextStyles.fontFamily
            ),),
            SizedBox(height: 8.h,),
            Text("Dr. John Murphy",
            style: TextStyle(
              color: AppColors.whiteTextColor,
              fontFamily: AppTextStyles.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp
            ),),
            SizedBox(height: 10.h,),
            SizedBox(
              width: 324.w,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: controller.zoomDrawerController.toggle,
                      child: Icon(Icons.sort,color: AppColors.whiteTextColor,size: 24.h,)),
                  SizedBox(width: 10.w,),
                  Container(
                    height: 37.h,
                    width: 270.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.whiteTextColor,width: 0.5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ]
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search,size: 20,color: AppColors.searchIconColor,),
                        hintText:  'Search here...',
                        hintStyle: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppTextStyles.fontFamily,
                          color: AppColors.searchIconColor
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Text(
              'Select Model',
              style: TextStyle(
                color:AppColors.whiteTextColor,
                fontSize: 19.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: GridView.builder(
              itemCount: controller.imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.57,
                crossAxisSpacing: 40,
                mainAxisSpacing: 12
            ), itemBuilder:(context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      switch(index){
                        case 0:
                          {
              Get.to(const MaleFemaleView(),binding: MaleFemaleBinding());
                          }
                        case 1:
                          {
                            Get.to( const MaleFemaleView(),binding: MaleFemaleBinding());}
                        case 2:
                          {
                            Get.to(RegionalAnatomyPage(),binding: RegionalAnatomyBinding());
                          }
                      }
                    },
                    child: Container(
                      width: 122,
                      height: 174.64,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: const Alignment(0, 1),
                          radius: 0,
                          colors: [AppColors.whiteTextColor.withOpacity(0.2), const Color(0xFF999999).withOpacity(0.2)],
                        ),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.whiteTextColor,width: 2),
                        boxShadow: const [
                          BoxShadow(blurStyle: BlurStyle.outer,
                            color: AppColors.whiteTextColor,
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Image.asset(controller.imageList[index]),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        controller.textList[index],
                        style: TextStyle(
                          fontSize: 15.sp,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = AppColors.themeColor,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                      controller.textList[index],
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
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
