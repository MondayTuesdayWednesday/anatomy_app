import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/help_screen/controller/help_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_texts.dart';
class HelpPage extends GetView<HelpPageController> {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal:20.h ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           SizedBox(height: 45.h,),

             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween ,
               children: [
                 GestureDetector(
                 onTap: (){
                 Get.back();
               },

            child:   Padding(
              padding:  EdgeInsets.only(left: 4.w),
              child: SvgPicture.asset(AppAssets.arrowBack,color: Theme.of(context).appBarTheme.backgroundColor,),
            ),),
                    Text(
                      AppTexts.helptext,
                      style:TextStyle(
             fontSize: 22.sp,
             fontFamily: AppTextStyles.fontFamily,
             color:Theme.of(context).appBarTheme.backgroundColor,
             fontWeight: FontWeight.w700,
                      ),),
                  SizedBox(width:20.w),
               ],

           ),
           SizedBox(height:30.h,),
           Expanded(


             child:  ListView.builder(
               itemCount: controller.showAnswer.length,
               itemBuilder: (BuildContext context, int index) {
                 return Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: EdgeInsets.only(bottom: 15.h),
                       child: GestureDetector(
                         onTap: () {
                           controller.toggleAnswer(index);
                         },
                         child: Container(
                           height: 45.h,
                           width: 310.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             border: Border.all(
                               width: 1,
                               color:Theme.of(context).appBarTheme.titleTextStyle!.color!.withOpacity(0.4),
                             ),
                           ),
                           child: Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 18.w),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [

                                 Text(
                                    '${AppTexts.questiontext}  ${index + 1}',
                                   style: AppTextStyles.weightFour(
                                     context: context,
                                     height: 1.3.h,
                                     fontSize: 13.sp,


                                   ),
                                 ),

                                 Icon(
                                   controller.showAnswer[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                   size: 30,
                                   color: AppColors.whiteTextColor,
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                     if (controller.showAnswer[index])
                       Padding(
                         padding:  EdgeInsets.only(bottom: 15.h,left: 15.w),
                         child: SizedBox(
                           width: 285.w,
                           child:  Text(
                             AppTexts.dummytext,
                             style: AppTextStyles.weightFour(
                               context: context,
                               height: 1.3.h,
                               fontSize: 12.sp,


                             ),),
                         ),
                       )

                   ],
                 ));
               },
             ),
           )
         ],
       ),
     ),
   );
  }
}


