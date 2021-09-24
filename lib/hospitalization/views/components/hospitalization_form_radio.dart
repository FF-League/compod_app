import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationFormRadio extends GetView {
  const HospitalizationFormRadio({required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
          title: Text(data, style: Get.textTheme.bodyText1),
          leading: Radio<String>(
            activeColor: Get.theme.colorScheme.secondary,
            value: data,
            onChanged: (v) => controller.sexValue.value = v ?? '',
            groupValue: controller.sexValue.value,
          ),
        ));
  }
}
