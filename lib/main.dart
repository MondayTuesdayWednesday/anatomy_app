
import 'package:anatomy/module/home_module/Widgets/home_drawer.dart';
import 'package:anatomy/module/home_module/home/binding/home_view_binding.dart';
import 'package:anatomy/module/home_module/virtual_dissection/binding/virtual_binding.dart';
import 'package:anatomy/module/home_module/virtual_dissection/view/virtual_page.dart';
import 'package:anatomy/module/slpash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'common/app_colors.dart';
import 'common/app_theme.dart';
import 'module/profile_module/appearance/controller/appearance_controller.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.transparentColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final AppearanceController controller = Get.put(AppearanceController(),);
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.leftToRight,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home:   HomePageDrawer(),
          initialBinding: HomeBinding(),
        );
      },
    );
  }
}
