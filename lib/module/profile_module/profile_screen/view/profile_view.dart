import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/authentication_module/signin/binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/signin/view/sign_in_view.dart';
import 'package:anatomy/module/profile_module/appearance/binding/appearance_binding.dart';
import 'package:anatomy/module/profile_module/appearance/screen/appearance_page.dart';
import 'package:anatomy/module/profile_module/changepassword_screen/view/changepassword_view.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/binding/editprofile_binding.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/view/editprofile_view.dart';
import 'package:anatomy/module/profile_module/help_screen/binding/help_page_binding.dart';
import 'package:anatomy/module/profile_module/help_screen/view/help_page.dart';
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
import '../../changepassword_screen/binding/changepassword_binding.dart';
class ProfileView extends GetView<ProfileController>{
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal:21.h),
       child: Column(
         children: [
           SizedBox(height: 40.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               GestureDetector(
                 onTap: () {
                   Get.back();
                 },
                   child: Padding(
                     padding:  EdgeInsets.only(left: 5.w),
                     child: SvgPicture.asset(AppAssets.arrowBack,color: Theme.of(context).appBarTheme.backgroundColor,),
                   )),
               Text(
                 AppTexts.profiletext,
                 textAlign: TextAlign.center,
                 style: AppTextStyles.weightSeven(
                   fontSize: 21.sp,
                   context: context,
                   color:  Theme.of(context).appBarTheme.backgroundColor,
                 ),),
               SizedBox(width:20.w,),
             ],
           ),
           SizedBox(height: 20.h),
           Row(
             children: [
               Container(
                 width: 67.w,
                 height:67.h,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(
                     color: AppColors.lightBlackColor, // Set border color to red
                     width: 2.0.w, // Set border width
                   ),
                 ),
               ),
               SizedBox(width: 15.w),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
               AppTexts.elonGatedtext,
                     style: AppTextStyles.weightSix(
                       context: context,
                       fontSize: 17.sp,
                     ),),
                   SizedBox(height: 5.h,),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.person_outline_rounded,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Profile Setting",
                        style: AppTextStyles.weightFour(
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                          context: context
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                Get.to( ChangePasswordView() , binding: ChangepasswordBinding());
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.password,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Change Password",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                                             height: 0.4.h,
                                             width: 370,
                                             color:AppColors.lightBlackColor,
                              ),



            Padding(
              padding:  EdgeInsets.symmetric(vertical: 17.h),
              child: Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(Icons.credit_card_rounded,
                      color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                      size: 16.sp,
                    ),
                    SizedBox(width: 12.w,),
                    Text(
                      "Subscription Details",
                      style: AppTextStyles.weightFour(
                        context: context,
                        fontSize: 13.sp,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                      ),),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color:Theme.of(context).appBarTheme.titleTextStyle?.color,
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
               Get.to(AppearancePage() , binding: AppearanceBinding());
             },
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.palette_outlined,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Appearance",
                        style: AppTextStyles.weightFour(
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                          context: context
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.chat_outlined,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Term and Conditions",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.headset_mic_outlined,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Help",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.verified_user_outlined,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 20.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Privacy Policy",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "App Info",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
                padding:  EdgeInsets.symmetric(vertical: 17.h),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(Icons.logout,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 16.sp,
                      ),
                      SizedBox(width: 12.w,),
                      Text(
                        "Log Out",
                        style: AppTextStyles.weightFour(
                          context: context,
                          fontSize: 13.sp,
                          color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:Theme.of(context).appBarTheme.titleTextStyle?.color,
                        size: 15.sp,
                      ),
                    ],
                  ),
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
   );
  }

}
