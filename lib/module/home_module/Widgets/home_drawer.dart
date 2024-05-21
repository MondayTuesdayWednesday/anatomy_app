import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../home/controller/home_view_controller.dart';
import '../home/home_view/home_view.dart';
import 'home_drawer_menu.dart';

class HomePageDrawer extends GetView<HomeViewController> {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: GetBuilder<HomeViewController>(
        builder: (_) =>  ZoomDrawer(
          clipMainScreen: false,
          closeCurve: Curves.easeIn,
          style: DrawerStyle.defaultStyle,
          controller: controller.zoomDrawerController,
          menuScreen: const HomeDrawerMenuScreen(),
          mainScreen: const HomePageView(),
          borderRadius: 24.0,
          showShadow: true,
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                color: AppColors.whiteTextColor.withOpacity(0.25),
                blurRadius: 8,
                blurStyle: BlurStyle.outer,
                offset: const Offset(0.0, 0.4)
            )],
          angle: 0.0,
            shadowLayer1Color:  Theme.of(context).cardColor,
            shadowLayer2Color:  Theme.of(context).canvasColor,
          slideWidth: MediaQuery.of(context).size.width * 0.68,
        )

      ),

    );
  }
}
