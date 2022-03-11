import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodFormRadio extends GetView<HospitalizationController> {
  const CompodFormRadio({Key? key, required this.data, required this.onChanged, required this.groupValue}): super(key: key);

  final FormStrings data;
  final void Function(String?) onChanged;
  final String groupValue;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
          title: Text(data.tr, style: Get.textTheme.bodyText1),
          leading: Radio<String>(
            activeColor: Get.theme.colorScheme.secondary,
            value: data.tr,
            onChanged: onChanged,
            groupValue: groupValue,
          ),
        ));
  }
}
