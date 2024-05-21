import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/female_anatomy/binding/female_binding.dart';
import 'package:anatomy/module/home_module/female_anatomy/view/female_view.dart';
import 'package:anatomy/module/home_module/regional_anatomy/binding/regional_anatomy_binding.dart';
import 'package:anatomy/module/home_module/regional_anatomy/view/regional_anatomy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../male_anatomy/binding/male_binding.dart';
import '../../male_anatomy/view/male_view.dart';
import '../controller/home_view_controller.dart';

class HomePageView extends GetView<HomeViewController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h,),
            Text("Welcome",style: TextStyle(
              color: AppColors.themeColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: AppTextStyles.fontFamily
            ),),
            SizedBox(height: 5.h,),
            Text("Dr. John Murphy",
            style: AppTextStyles.weightSeven(
              context: context,
              fontSize: 18.sp,
            ),
            ),
            SizedBox(height: 25.h,),
            Row(
              children: [
                GestureDetector(
                    onTap: controller.zoomDrawerController.toggle,
                    child: Icon(Icons.sort_sharp,
                      color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 24.h
                    )),
                SizedBox(width: 15.w,),
                Container(
                  height: 37.h,
                  width: 265.w,
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
                )
              ],
            ),
            SizedBox(height: 27.h,),
            Text(
              'Select Model',
              style: AppTextStyles.weightSeven(
                context: context,
                fontSize: 19.sp,
              ),
            ),
            SizedBox(height: 10.h,),


            Expanded(child: GridView.builder(
              itemCount: controller.imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
                crossAxisSpacing: 55,

            ), itemBuilder:(context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      switch(index){
                        case 0:
                          {
              Get.to(const MaleView(),binding: MaleBinding());
                          }
                        case 1:
                          {
                            Get.to(const FemaleView() , binding: FemaleBinding());
                          }
                        case 2:
                          {
                            Get.to(const RegionalAnatomyPage(),binding: RegionalAnatomyBinding());
                          }
                        case 3:
                          {
                          }
                        case 4:
                          {
                          }
                        case 5:
                          {
                          }
                        case 6:
                          {
                          }
                      }
                    },
                    child: Container(
                      width: 122,
                      height: 174.64,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          radius: 0.9,
                          colors: [
                            Theme.of(context).primaryTextTheme.titleSmall?.color??Colors.red,
                            Theme.of(context).primaryTextTheme.titleLarge?.color??Colors.red,

                          ],
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
                            ..color = Theme.of(context).appBarTheme.backgroundColor??Colors.red,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                      controller.textList[index],
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Theme.of(context).appBarTheme.titleTextStyle?.color,
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
