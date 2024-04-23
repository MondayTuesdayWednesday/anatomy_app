import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/Payment_module/payment_method/binding/payment_method_binding.dart';
import 'package:anatomy/module/Payment_module/payment_method/view/payment_method_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/payment_controller.dart';

class PaymentSelectionBox extends GetView<PaymentController> {
  final int index;


  const PaymentSelectionBox(
    this.index, );

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () {
            controller.changeColor(index);
            Get.to(PaymentMethodPage(),binding: PaymentMethodBinding());
          },
          child: Container(
            height: 70.h,
            width: 290.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: controller.selectedContainerIndex.value == index
                    ? AppColors.themeColor
                    : AppColors.borderHintColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: controller.selectedContainerIndex.value == index
                      ? AppColors.whiteTextColor.withOpacity(0.2)
                      : Colors.transparent, // Shadow color
                  spreadRadius: -2, // Spread radius
                  blurRadius: 20, // Blur radius
                  offset: const Offset(0, 3), // Offset of the shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.red,
                  ),
                  child: Radio(
                    fillColor:  MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.orange.withOpacity(.32);
                      }
                      return Theme.of(context).appBarTheme.surfaceTintColor??Colors.red;
                    }),
                    value: index,
                    groupValue: controller.selectedRadioIndex.value,
                    onChanged: (int? value) => controller.changeRadio(value!),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Life Time",
                          style: AppTextStyles.weightSix(
                            context: context,
                            fontSize: 16.sp
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "(Saving Offer)",
                          style: AppTextStyles.weightSix(
                            context: context,
                            fontSize: 10.sp
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$29.99 per year, Lorem ipsum',
                          style: AppTextStyles.weightSix(
                            context: context,
                            fontSize: 12.sp,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
