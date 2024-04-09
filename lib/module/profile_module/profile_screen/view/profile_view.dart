import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/binding/editprofile_binding.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/view/editprofile_view.dart';
import 'package:anatomy/module/profile_module/help_screen/binding/help_page_binding.dart';
import 'package:anatomy/module/profile_module/help_screen/view/help_page.dart';
import 'package:anatomy/module/profile_module/languagesettings/binding/languagesettings_binding.dart';
import 'package:anatomy/module/profile_module/languagesettings/view/languagesetttings_view.dart';
import 'package:anatomy/module/profile_module/privacypolicy_screen/binding/privacypolicy_binding.dart';
import 'package:anatomy/module/profile_module/privacypolicy_screen/view/privacypolicy_view.dart';
import 'package:anatomy/module/profile_module/profile_screen/controller/profile_controller.dart';
import 'package:anatomy/module/profile_module/splash_screen/view/splash_view.dart';
import 'package:anatomy/module/profile_module/termandcondition_screen/binding/termandcondition_binding.dart';
import 'package:anatomy/module/profile_module/termandcondition_screen/view/termandcondition_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_texts.dart';

class ProfileView extends GetView<ProfileController>{
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.bgThemeColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal:20.h),
       child: SingleChildScrollView(
         child: Column(
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
                   AppTexts.profiletext,
                   style: TextStyle(
                     fontSize: 22.sp,
                     fontFamily: AppTextStyles.fontFamily,
                     color:AppColors.themeColor,
                     fontWeight: FontWeight.w700,
                   ),),
                 SizedBox(width:20.w,),
               ],
             ),
             SizedBox(height: 15.h),
             Row(
               children: [
                 Container(
                   width: 74.w,
                   height:74.h,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                       color: AppColors.lightBlackColor, // Set border color to red
                       width: 3.0, // Set border width
                     ),
                     image: const DecorationImage(
                       image: AssetImage('assets/images/mano.png'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 SizedBox(width: 15.w),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                 AppTexts.elonGatedtext,
                       style: TextStyle(
                         fontSize: 18.sp,
                         fontFamily: AppTextStyles.fontFamily,
                         color:AppColors.whiteTextColor,
                         fontWeight: FontWeight.w600,
                       ),),
                     Text(
                       'elon@gated.com',
                       style: TextStyle(
                         fontSize: 12.sp,
                         fontFamily: AppTextStyles.fontFamily,
                         color:AppColors.lightBlackColor,
                         fontWeight: FontWeight.w400,
                       ),),
                   ],
                 )
               ],
             ),
             SizedBox(height: 10.h),
           
              GestureDetector(
                onTap: () {
                  Get.to( const EditProfileView()  ,binding: EditprofileBinding());
                },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.person_outline_rounded,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Profile Setting",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                                               height: 0.4.h,
                                               width: 370,
                                               color:AppColors.lightBlackColor,
                                ),


              GestureDetector(
                onTap: () {
                  // Get.to(const ChangePasswordPage() , binding: ChangepasswordBinding());
                },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.password,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Change Password",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                                               height: 0.4.h,
                                               width: 370,
                                               color:AppColors.lightBlackColor,
                                ),



              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  children: [
                    Icon(Icons.credit_card_rounded,
                      color:AppColors.whiteTextColor,
                      size: 20.sp,
                    ),
                    SizedBox(width: 12.w,),
                    Text(
                      "Subscription Details",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: AppTextStyles.fontFamily,
                        color:AppColors.whiteTextColor,
                        fontWeight: FontWeight.w400,
                      ),),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color:AppColors.whiteTextColor,
                      size: 15.sp,
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),


             GestureDetector(
               onTap: () {
                 Get.to(LanguagesettigsView() , binding: LanguagesettingsBinding());
               },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.translate,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),



             GestureDetector(
               onTap: () {
                 Get.to(const TermConditionView() , binding: TermConditionBinding());
               },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.chat_outlined,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Term and Conditions",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),



             GestureDetector(
               onTap: () {
                 Get.to( const HelpPage() , binding: HelppageBinding());
               },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.headset_mic_outlined,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Help",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),


             GestureDetector(
               onTap: () {
                 Get.to(const PrivacyPolicyView( ) , binding: PrivacypolicyBinding());
               },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.verified_user_outlined,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),


             GestureDetector(
               onTap: () {
                 Get.to(const SplashView());
               },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "App Info",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),


              GestureDetector(
                onTap: () {
                  Get.off( const SignInPage() , binding: SignInBinding());
                },
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Icon(Icons.logout,
                        color:AppColors.whiteTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w400,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.whiteTextColor,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.4.h,
                width: 370,
                color:AppColors.lightBlackColor,
              ),

             SizedBox(height: 20.h,)

           ],
         ),
       ),
     ),
   );
  }

}
