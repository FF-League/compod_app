import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/forms/controller/hospitalization_controller.dart';
import 'package:compod_app/forms/hospitalization_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/compod_form_field.dart';

class HospitalizationForm extends GetView<HospitalizationController> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildText(String text) => Container(width: double.infinity, child: Text(text, style: Get.textTheme.bodyText1));

  Widget buildRadioButton(String text) {
    return Obx(() => ListTile(
          title: Text(text, style: Get.textTheme.bodyText1),
          leading: Radio<String>(
            activeColor: Get.theme.colorScheme.secondary,
            value: text,
            onChanged: (v) => controller.sexValue.value = v ?? '',
            groupValue: controller.sexValue.value,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Preencha o formulário com as informações do paciente',
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
                  buildText("Nome"),
                  CompodFormField(),
                  buildText("Idade"),
                  CompodFormField(),
                  buildText("Sexo"),
                  buildRadioButton("Masculino"),
                  buildRadioButton("Feminino"),
                  buildRadioButton("Outro"),
                  buildText("Profissão"),
                  CompodFormField(),
                  buildText("Endereço"),
                  CompodFormField(),
                  buildText("Telefone com DDD"),
                  CompodFormField(),
                  buildText("E-mail"),
                  CompodFormField(),
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
