import 'dart:io';
import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/controller/editprofile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileView extends GetView<EditprofileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: AppColors.bgThemeColor,
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal:20.w),
     child: SingleChildScrollView(
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 45.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               GestureDetector(
                 onTap: () {
                   Get.back();
                 },
                   child: SvgPicture.asset(AppAssets.arrowBack)),
               Text(
                 'Profile',
                 style: TextStyle(
                   fontSize: 22.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.themeColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width:7.w,),
             ],
           ),
           SizedBox(height:15.h,),
           Center(
             child:SizedBox(
               height: 85.h,
               width: 110.w,
               child: Stack(
                 children: [
                   Obx(
                         () => Center(
                       child: Container(
                         width: 95.w,
                         height: 95.h,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                             color: Colors.white,
                             width: 3.0,
                           ),
                           image: controller.imagePath.isNotEmpty ?DecorationImage(
                             image:
                                 FileImage(File(controller.imagePath.toString())),
                             fit: BoxFit.fitWidth,
                           ): const DecorationImage(image:   AssetImage('assets/images/mano.png')),
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     right: 7.w,
                     bottom: 0.h,
                     child: GestureDetector(
                       onTap: () {
                         controller.openGallery();
                       },
                       child: Container(
                         width: 30.w,
                         height: 30.h,
                         decoration: const BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.white,
                         ),
                         child: Icon(
                           Icons.photo_camera,
                           size: 14.h,
                           color: Colors.black,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
       SizedBox(height: 20.h,),
           Text(
             'Full name',
             style: TextStyle(
               fontSize: 13.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
       SizedBox(height: 10.h,),
       Container(
         height: 43.h,

         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
           border: Border.all(
             width: 1,
             color:AppColors.whiteTextColor.withOpacity(0.4),
           ),
         ),
       
         child: TextFormField(
           focusNode: controller.focusNode1,
           textInputAction: TextInputAction.next,
           onFieldSubmitted: (_) {
             FocusScope.of(context).requestFocus(controller.focusNode2);
           },
           decoration: InputDecoration(
             contentPadding: EdgeInsets.only(left:19.w),
             hintText: 'Full Name',
             border: InputBorder.none,
             hintStyle:  TextStyle(
               fontSize: 10.sp,
               color: Colors.white54, // Setting hint text color to white with opacity
               fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
             ),
           ),
         ),
       ),
           SizedBox(height: 18.h,),
           Text(
             'Email',
             style: TextStyle(
               fontSize: 13.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 10.h,),
           Container(
             height: 43.h,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
       
             child: TextFormField(
               focusNode: controller.focusNode2,
               textInputAction: TextInputAction.next,
               onFieldSubmitted: (_) {
                 FocusScope.of(context).requestFocus(controller.focusNode3);
               },
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(left:19.w),
                 hintText: 'Email',
                 border: InputBorder.none,
                 hintStyle:  TextStyle(
                   fontSize: 10.sp,
                   color: Colors.white54, // Setting hint text color to white with opacity
                   fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                 ),
               ),
             ),
           ),
           SizedBox(height: 18.h,),
           Text(
             'Location',
             style: TextStyle(
               fontSize: 13.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 10.h,),
           Container(
             height: 43.h,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
       
             child: TextFormField(
               focusNode: controller.focusNode3,
               textInputAction: TextInputAction.next,
               onFieldSubmitted: (_) {
                 FocusScope.of(context).requestFocus(controller.focusNode4);
               },
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(left:19.w),
                 hintText: 'Location',
                 border: InputBorder.none,
                 hintStyle:  TextStyle(
                   fontSize: 10.sp,
                   color: Colors.white54, // Setting hint text color to white with opacity
                   fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                 ),
               ),
             ),
           ),
           SizedBox(height: 18.h,),
           Text(
             'Phone Number',
             style: TextStyle(
               fontSize: 13.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 10.h,),
           Container(
             height: 43.h,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
       
             child: TextFormField(
               focusNode: controller.focusNode4,
               textInputAction: TextInputAction.next,
               onFieldSubmitted: (_) {
                 FocusScope.of(context).requestFocus(controller.focusNode4);
               },
               keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(left:19.w),
                 hintText: '+91 0000',
                 border: InputBorder.none,
                 hintStyle:  TextStyle(
                   fontSize: 10.sp,
                   color: Colors.white54, // Setting hint text color to white with opacity
                   fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                 ),
               ),
             ),
           ),
       SizedBox(height: 85.h,),
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
