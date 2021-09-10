import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/forms/controller/internation_controller.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:compod_app/forms/views/components/internation_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/internation_tile.dart';

class InternationSelectView extends StatelessWidget {
  final controller = Get.put(InternationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(16), child: Text(FormsStringsEnum.formsSelectViewHeader.name.tr, textAlign: TextAlign.center, style: Get.textTheme.headline4?.copyWith(color: Colors.white))),
          FormsTile(type: InternationType.psychology),
          FormsTile(type: InternationType.internation),
          FormsTile(type: InternationType.legal),
          FormsTile(type: InternationType.voluntary),
        ],
      ),
    );
  }
}
