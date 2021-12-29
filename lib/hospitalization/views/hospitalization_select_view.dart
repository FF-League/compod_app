import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/hospitalization_big_button.dart';

class HospitalizationSelectView extends GetView<HospitalizationController> {
  HospitalizationSelectView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(HospitalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(16), child: Text(HospitalizationStringsEnum.formsSelectViewHeader.tr, textAlign: TextAlign.center, style: Get.textTheme.headline4?.copyWith(color: Colors.white))),
          HospitalizationBigButton(type: HospitalizationType.psychology),
          HospitalizationBigButton(type: HospitalizationType.hospitalization),
          HospitalizationBigButton(type: HospitalizationType.juridical),
          HospitalizationBigButton(type: HospitalizationType.voluntary),
        ],
      ),
    );
  }
}
