import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
class HomeViewController extends GetxController {
  late ZoomDrawerController zoomDrawerController;

  @override
  void onInit() {
    zoomDrawerController = ZoomDrawerController();
    super.onInit();
  }

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }

  List<String> textList = [
    "Male",
    "Female",
    "Regional Anatomy",
  ];
  List<String> imageList = [
    "assets/images/male.png",
    "assets/images/female.png",
    "assets/images/regional.png",

  ];

  var isPreferencesExpanded = false.obs;

  void togglePreferences() {
    isPreferencesExpanded.value = !isPreferencesExpanded.value;
  }
}

