import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/forms/controller/hospitalization_controller.dart';
import 'package:compod_app/forms/hospitalization_strings.dart';
import 'package:compod_app/forms/models/hospitalization_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/hospitalization_tile.dart';

class HospitalizationSelectView extends GetView<HospitalizationController> {

  final controller = Get.put(HospitalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(16), child: Text(HospitalizationStringsEnum.formsSelectViewHeader.tr, textAlign: TextAlign.center, style: Get.textTheme.headline4?.copyWith(color: Colors.white))),
          FormsTile(type: HospitalizationType.psychology),
          FormsTile(type: HospitalizationType.hospitalization),
          FormsTile(type: HospitalizationType.juridical),
          FormsTile(type: HospitalizationType.voluntary),
        ],
      ),
    );
  }
}
