import 'package:anatomy/module/home_module/regional_module/respiratory/controller/respiratory_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../common/app_assets.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/app_text_styles.dart';
import '../../../Widgets/bottom_sheet.dart';
import '../../../Widgets/button.dart';

class RespiratoryPage extends GetView<RespiratoryController>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Obx(() => Stack(
            alignment: Alignment.center,
            children: [
              Row(


                children: [



                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 35.h),
                      child: SizedBox(

                        height: 645.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [


                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  IconButton(onPressed: () => Get.back(), icon: SvgPicture.asset(AppAssets.arrowBack , color: Theme.of(context).appBarTheme.titleTextStyle?.color,)),


                                  SizedBox(
                                    width: 90.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        IconButton(onPressed: () {

                                        }, icon: Icon(
                                          Icons.add_circle_outline,
                                          color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                                          size: 24.h,

                                        ),),


                                        IconButton(onPressed: () {

                                        }, icon: Icon(
                                          Icons.do_not_disturb_on_outlined,
                                          color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                                          size: 24.h,

                                        ),)

                                      ],
                                    ),
                                  ),

                                  IconButton(onPressed: () {

                                  }, icon: Icon(
                                    Icons.refresh,
                                    color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                                    size: 24.h,

                                  ),)


                                ],
                              ),
                            ),



                            IconButton(onPressed: () {
                              controller.toggleContainerVisibility();
                            },
                              icon: Icon(Icons.keyboard_double_arrow_left ,
                                size: 26.h,
                                weight: 100.h,
                                color: Theme.of(context).appBarTheme.titleTextStyle?.color,),),




                            Padding(
                              padding:  EdgeInsets.only(right: 10.w ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [

                                    controller.isIconVisible.value
                                        ?
                                    Padding(
                                      padding:  EdgeInsets.only( right: controller.isContainerVisible.value ? 0 :10.w ),
                                      child: SizedBox(

                                        width: controller.isContainerVisible.value ? 250.w : 295.w ,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Button(
                                              onPressed: (){

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
                                      ),
                                    )

                                        : const SizedBox.shrink(),


                                    GestureDetector(
                                      onTap: () {
                                        controller.toggleIconVisibility();
                                      },
                                      child: Padding(
                                        padding:  EdgeInsets.only(bottom: 35.h ),
                                        child: Icon(
                                          Icons.menu,
                                          size: 30.h,
                                          color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                                        ),
                                      ),
                                    ),

                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),





                  controller.isContainerVisible.value
                      ? Container(
                      height: 690.h,
                      width: 65.w,
                      color: AppColors.whiteTextColor,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Obx(() => Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 15.h),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.listContainer.value = index ;
                                  },
                                  child: Container(
                                      width: 50.w,
                                      height: 45.h,
                                      decoration: ShapeDecoration(
                                        color:  controller.listContainer.value == index ? const Color(0xFF1C2325) :  const Color(0xFFD9D9D9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.40),
                                          side: controller.listContainer.value == index ?const BorderSide(width: 1, color: Color(0xFFFBBA6F))
                                              :const BorderSide(width: 0 , color: Colors.transparent),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 4.12,
                                            offset: Offset(0, 1.03),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Center(child: Image.asset("assets/images/male.png", height: 35.h,fit: BoxFit.fitHeight,))
                                  ),
                                ),
                              ),
                              SizedBox(height: 7.h),
                              Text("Muscular System",
                                style: TextStyle(
                                    color: AppColors.blackTextColor,
                                    fontFamily: AppTextStyles.fontFamily,
                                    fontWeight: controller.listContainer.value == index ? FontWeight.w800 : FontWeight.w500,
                                    fontSize: 6.5.sp
                                ),),
                            ],
                          ));
                        },)
                  )

                      : const SizedBox.shrink(),






                ],
              ),

              GestureDetector(
                onTap: () {
                  Get.bottomSheet(const BottomSheetWidget());
                },
                child: Container(
                  height: 250.h,
                  width: 150.w,
                  color: Colors.red,
                ),
              ),
            ]
        ),)
    );
  }

}