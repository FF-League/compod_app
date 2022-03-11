import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodFormField extends GetView<HospitalizationController> {
  const CompodFormField({Key? key, required this.type}) : super(key: key);

  final CompodFormType type;

  TextInputType get _keyboardType {
    switch (type) {
      case CompodFormType.name: return TextInputType.name;
      case CompodFormType.phone: return TextInputType.phone;
      case CompodFormType.age: return TextInputType.number;
      case CompodFormType.email: return TextInputType.emailAddress;
      default: return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: type == CompodFormType.text ? 6 : 1,
      maxLines: type == CompodFormType.text ? 6 : 1,
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
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        fillColor: Colors.blueGrey.shade50,
        filled: true,
      ),
    );
  }
}

enum CompodFormType { name, job, email, age, phone, text, address }
