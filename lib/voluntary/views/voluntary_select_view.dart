import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/voluntary/controller/voluntary_controller.dart';
import 'package:compod_app/voluntary/models/voluntary_type.dart';
import 'package:compod_app/voluntary/views/components/voluntary_big_button.dart';
import 'package:compod_app/voluntary/voluntary_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoluntarySelectView extends GetView<VoluntaryController> {
  const VoluntarySelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompodScaffold(
      appBarTitle: VoluntaryStrings.title.tr,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.all(16.0), child: Text(VoluntaryStrings.selectVoluntaryType.tr, textAlign: TextAlign.end, style: Get.textTheme.headline4)),
          const VoluntaryBigButton(type: VoluntaryType.psychology),
          const VoluntaryBigButton(type: VoluntaryType.psychopedagogy),
          const VoluntaryBigButton(type: VoluntaryType.others),
        ],
      ),
    );
  }
}
