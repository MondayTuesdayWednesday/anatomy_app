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
    zoomDrawerController.toggle?.call();
    update();
  }

  List<String> textList = [
    "Male",
    "Female",
    "Regional Anatomy",
    "Surface Anatomy",
    "Cross sectional",
    "Video Lectures",
    "Virtual Dissection",
  ];
  List<String> imageList = [
    "assets/images/male.png",
    "assets/images/female.png",
    "assets/images/regional.png",
    "assets/images/surface_anatomy.png",
    "assets/images/cross_sectional.png",
    "assets/images/video_lectures.png",
    "assets/images/virtual_dissection.png",

  ];

  var isPreferencesExpanded = false.obs;

  void togglePreferences() {
    isPreferencesExpanded.value = !isPreferencesExpanded.value;
  }
}

