import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationFormRadio extends GetView<HospitalizationController> {
  const HospitalizationFormRadio({required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
          title: Text(data, style: Get.textTheme.bodyText1),
          leading: Radio<String>(
            activeColor: Get.theme.colorScheme.secondary,
            value: data,
            onChanged: (v) => controller.form.update((val) => val?.sex = v ?? ''),
            groupValue: controller.form.value.sex,
          ),
        ));
  }
}
