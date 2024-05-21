
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/home_module/Widgets/home_drawer.dart';
import 'package:anatomy/module/home_module/head_nack/binding/head_neck_binding.dart';
import 'package:anatomy/module/home_module/head_nack/view/head_neck_page.dart';
import 'package:anatomy/module/home_module/upper_limb/binding/upper_limb_binding.dart';
import 'package:anatomy/module/home_module/upper_limb/view/upper_limb_page.dart';
import 'package:anatomy/module/profile_module/help_screen/binding/help_page_binding.dart';
import 'package:anatomy/module/profile_module/help_screen/view/help_page.dart';
import 'package:anatomy/module/profile_module/profile_screen/binding/profile_binding.dart';
import 'package:anatomy/module/profile_module/profile_screen/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../home/controller/home_view_controller.dart';

class HomeDrawerMenuScreen extends GetView<HomeViewController> {
  const HomeDrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              IconButton(onPressed: () {
                controller.toggleDrawer();
              }, icon: Icon(
                Icons.close,
                size: 22.h,
                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              )),
              const Spacer(),
              Text("Discover",
                style: AppTextStyles.weightSeven(
                  context: context,
                  fontSize: 17.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
      
          draweritem(Icons.circle_outlined, 'All Models', () {
            controller.toggleDrawer();
          } , context,),
      
          Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                draweritem(
                  Icons.description_outlined,
                  'Preferences +',
                      () {
                    controller.togglePreferences();
                  }, context,
                ),
                if (controller.isPreferencesExpanded.value)
                  ...[
                    SizedBox(
                      height: 10
                          .h, // Adjust the spacing between "Preferences+" and sub-items
                    ),
                  subitem("-   Head & Neck", () {
                    Get.to(HeadNeckPage(),binding: HeadNeckBinding());
                  }, context),
                  subitem("-   Upper Limb", () {
                    Get.to(UpperLimbPage(),binding: UpperLimbBinding());
                  }, context),
                  subitem("-   Lower Limb", () { },context),
                  subitem("-   Thorax", () { }, context),
                  subitem("-   Abdomen ", () { }, context),
                  subitem("-   Pelvis", () { }, context),
                  subitem("-   Organs", () { }, context),
                  ],
              ],
            );
          }),
      
          draweritem(Icons.settings_outlined, 'Settings', () {
            Get.to( const ProfileView() , binding:  ProfileBinding());
          }, context),

          draweritem(Icons.help_outline, 'Help', () {
            Get.to(HelpPage(),binding: HelppageBinding());
          }, context)
        ],
      ),
    );
  }

  Widget draweritem(IconData icon, String title, VoidCallback callback ,
       BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: Theme.of(context).appBarTheme.titleTextStyle?.color,
      ),
      title: Text(
        title,
        style: AppTextStyles.weightFour(
          context: context,
          fontSize: 14.sp,
        ),
      ),
      onTap: callback,
    );
  }
  Widget subitem(String title, VoidCallback callback , BuildContext context){
    return  Padding(
      padding:  EdgeInsets.only(left: 6.w),
      child: TextButton(onPressed: callback, child: Text(title,
        style: AppTextStyles.weightFour(
          context: context,
          fontSize: 14.sp,
        ),)),
    );
  }
}


