import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/compod_form_field.dart';
import 'package:compod_app/components/compod_form_text.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/voluntary/controller/voluntary_controller.dart';
import 'package:compod_app/voluntary/voluntary_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/compod_form_radio.dart';

class VoluntaryFormView extends GetView<VoluntaryController> {
  VoluntaryFormView({Key? key}) : super(key: key);


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: VoluntaryStrings.title.tr),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              VoluntaryStrings.fillFormWithYourData.tr,
              softWrap: true,
              textAlign: TextAlign.center,
              style: Get.textTheme.headline4,
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
                  CompodFormRadio(data: FormStrings.male, onChanged: (value) => controller.form.value.sex = value ?? '', groupValue: controller.form.value.sex),
                  CompodFormRadio(data: FormStrings.female, onChanged: (value) => controller.form.value.sex = value ?? '', groupValue: controller.form.value.sex),
                  CompodFormRadio(data: FormStrings.other, onChanged: (value) => controller.form.value.sex = value ?? '', groupValue: controller.form.value.sex),
                  const CompodFormText(data: FormStrings.job),
                  const CompodFormField(type: CompodFormType.job),
                  const CompodFormText(data: FormStrings.address),
                  const CompodFormField(type: CompodFormType.address),
                  const CompodFormText(data: FormStrings.phoneWithAreaCode),
                  const CompodFormField(type: CompodFormType.phone),
                  const CompodFormText(data: FormStrings.email),
                  const CompodFormField(type: CompodFormType.email),
                  const CompodFormText(data: FormStrings.tellUsAboutYou),
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
