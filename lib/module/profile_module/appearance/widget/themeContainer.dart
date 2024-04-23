import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/appearance_controller.dart';

class ThemeContainerWidget extends StatelessWidget {
  final String containerName;
  final int containerIndex;
  final IconData icon;
  Function? onPressed;
  ThemeContainerWidget(
      this.containerName, this.containerIndex, this.icon, this.onPressed,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final AppearanceController controller = Get.put(AppearanceController());
    return Column(
      children: [
        SizedBox(
          height: 22.h,
        ),
        GestureDetector(
          onTap: () {
            controller.setSelectedRadio(containerIndex);
            onPressed!();
          },
          child: Padding(
            padding: EdgeInsets.only(left: 17.w, right: 10.w),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 24.h,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  containerName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.h,
                  child: Obx(
                    () => Radio<int>(
                      activeColor: Theme.of(context).cardTheme.color,
                      value: containerIndex,
                      groupValue: controller.selectedRadio.value,
                      onChanged: (val) {
                        controller.setSelectedRadio(val!);
                        switch (val) {
                          case 1:
                            controller
                                .changeTheme(ThemeModeOptions.systemDefault);
                            break;
                          case 2:
                            controller.changeTheme(ThemeModeOptions.dark);
                            break;
                          case 3:
                            controller.changeTheme(ThemeModeOptions.light);
                            break;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
