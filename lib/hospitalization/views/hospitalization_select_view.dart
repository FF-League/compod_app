import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/hospitalization_big_button.dart';

class HospitalizationSelectView extends GetView<HospitalizationController> {
  const HospitalizationSelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompodScaffold(
      appBarTitle: HospitalizationStringsEnum.hospitalization.tr,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.all(16), child: Text(HospitalizationStringsEnum.formsSelectViewHeader.tr, textAlign: TextAlign.end, style: Get.textTheme.headline4)),
          HospitalizationBigButton(type: HospitalizationType.psychology),
          HospitalizationBigButton(type: HospitalizationType.hospitalization),
          HospitalizationBigButton(type: HospitalizationType.juridical),
          HospitalizationBigButton(type: HospitalizationType.voluntary),
        ],
      ),
    );
  }
}
