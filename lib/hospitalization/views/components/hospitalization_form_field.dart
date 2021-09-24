import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationFormField extends GetView<HospitalizationController> {
  final HospitalizationFormType type;

  const HospitalizationFormField({Key? key, required this.type});

  TextInputType get _keyboardType {
    switch (type) {
      case HospitalizationFormType.name: return TextInputType.name;
      case HospitalizationFormType.phone: return TextInputType.phone;
      case HospitalizationFormType.age: return TextInputType.number;
      case HospitalizationFormType.email: return TextInputType.emailAddress;
      default: return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: type == HospitalizationFormType.text ? 6 : 1,
      maxLines: type == HospitalizationFormType.text ? 6 : 1,
      onChanged: (value) => controller.updateFormContent(type, value),
      validator: (value) => (value?.isEmpty ?? true) ? HospitalizationStringsEnum.thisFieldMustBeFilled.tr : null,
      key: key,
      keyboardType: _keyboardType,
      style: Get.textTheme.bodyText2,
      cursorColor: Get.theme.colorScheme.secondary,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Get.theme.colorScheme.secondary),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        fillColor: Colors.blueGrey.shade50,
        filled: true,
      ),
    );
  }
}

enum HospitalizationFormType { name, job, email, age, phone, text, address }
