import 'package:anatomy/module/profile_module/editprofile_screen/controller/editprofile_controller.dart';
import 'package:get/get.dart';

class EditprofileBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => EditprofileController());
  }

}