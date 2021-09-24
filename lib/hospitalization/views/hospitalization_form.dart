import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/hospitalization/views/components/hospitalization_form_radio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/hospitalization_form_field.dart';
import 'components/hospitalization_form_text.dart';

class HospitalizationForm extends GetView<HospitalizationController> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              HospitalizationStringsEnum.fillWithPatientInfo.tr,
              textAlign: TextAlign.center,
              style: Get.textTheme.headline4?.copyWith(color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.surface,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              boxShadow: const [BoxShadow(blurRadius: 5.0, offset: Offset(2, 2))],
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.name.tr),
                  HospitalizationFormField(type: HospitalizationFormType.name),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.age.tr),
                  HospitalizationFormField(type: HospitalizationFormType.age),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.gender.tr),
                  HospitalizationFormRadio(data: HospitalizationFieldsStringsEnum.male.tr),
                  HospitalizationFormRadio(data: HospitalizationFieldsStringsEnum.female.tr),
                  HospitalizationFormRadio(data: HospitalizationFieldsStringsEnum.other.tr),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.job.tr),
                  HospitalizationFormField(type: HospitalizationFormType.job),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.address.tr),
                  HospitalizationFormField(type: HospitalizationFormType.address),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.phoneWithAreaCode.tr),
                  HospitalizationFormField(type: HospitalizationFormType.phone),
                  HospitalizationFormText(data: HospitalizationFieldsStringsEnum.email.tr),
                  HospitalizationFormField(type: HospitalizationFormType.email),
                ],
              ),
            ),
          ),
          CompodRaisedButton(buttonText: StringsEnum.sendButton.tr, action: () => controller.goToSuccessView(formKey)),
        ],
      ),
    );
  }
}
