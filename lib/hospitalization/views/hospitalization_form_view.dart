import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/compod_form_field.dart';
import 'package:compod_app/components/compod_form_radio.dart';
import 'package:compod_app/components/compod_form_text.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationFormView extends GetView<HospitalizationController> {
  HospitalizationFormView({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CompodScaffold(
      appBarTitle: HospitalizationStringsEnum.hospitalization.tr,
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
                  const CompodFormText(data: FormStrings.name),
                  const CompodFormField(type: CompodFormType.name),
                  const CompodFormText(data: FormStrings.age),
                  const CompodFormField(type: CompodFormType.age),
                  const CompodFormText(data: FormStrings.gender),
                  Obx(() => CompodFormRadio(data: FormStrings.male, onChanged: (v) => controller.sex = v, groupValue: controller.sex)),
                  Obx(() => CompodFormRadio(data: FormStrings.female, onChanged: (v) => controller.sex = v, groupValue: controller.sex)),
                  Obx(() => CompodFormRadio(data: FormStrings.other, onChanged: (v) => controller.sex = v, groupValue: controller.sex)),
                  const CompodFormText(data: FormStrings.job),
                  const CompodFormField(type: CompodFormType.job),
                  const CompodFormText(data: FormStrings.address),
                  const CompodFormField(type: CompodFormType.address),
                  const CompodFormText(data: FormStrings.phoneWithAreaCode),
                  const CompodFormField(type: CompodFormType.phone),
                  const CompodFormText(data: FormStrings.email),
                  const CompodFormField(type: CompodFormType.email),
                  const CompodFormText(data: FormStrings.describeSituation),
                  const CompodFormField(type: CompodFormType.text),
                ],
              ),
            ),
          ),
          CompodRaisedButton(buttonText: CommonStrings.sendButton.tr, action: () => controller.sendForm(formKey)),
        ],
      ),
    );
  }
}
