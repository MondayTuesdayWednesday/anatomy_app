import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
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
                color: AppColors.whiteTextColor,
              )),
              Spacer(),
              Text("Discover", style: TextStyle(
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.h,
                  color: AppColors.whiteTextColor
              ),)
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
      
          draweritem(Icons.circle_outlined, 'All Models', () {},),
      
          Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                draweritem(
                  Icons.description_outlined,
                  'Preferences +',
                      () {
                    controller.togglePreferences();
                  },
                ),
                if (controller.isPreferencesExpanded.value)
                  ...[
                    SizedBox(
                      height: 10
                          .h, // Adjust the spacing between "Preferences+" and sub-items
                    ),
                  subitem("-   Head & Neck", () { }),
                  subitem("-   Upper Limb", () { }),
                  subitem("-   Lower Limb", () { }),
                  subitem("-   Thorax", () { }),
                  subitem("-   Abdomen ", () { }),
                  subitem("-   Pelvis", () { }),
                  subitem("-   Organs", () { }),
                  ],
              ],
            );
          }),

      
          draweritem(Icons.favorite_outline, 'Saved', () {}),
      
          draweritem(Icons.settings_outlined, 'Settings', () {
            Get.to( const ProfileView() , binding:  ProfileBinding());
          }),

          draweritem(Icons.help_outline, 'Help', () {
      
          })
        ],
      ),
    );
  }

  Widget draweritem(IconData icon, String title, VoidCallback callback) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: AppColors.whiteTextColor,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: AppColors.whiteTextColor,
            fontFamily: AppTextStyles.fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp),
      ),
      onTap: callback,
    );
  }
  Widget subitem(String title, VoidCallback callback){
    return  Padding(
      padding:  EdgeInsets.only(left: 6.w),
      child: TextButton(onPressed: callback, child: Text(title,
        style: TextStyle(
        color: AppColors.whiteTextColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: AppTextStyles.fontFamily
        ),)),
    );
  }
}


