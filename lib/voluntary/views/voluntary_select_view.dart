import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/voluntary/controller/voluntary_controller.dart';
import 'package:compod_app/voluntary/models/voluntary_type.dart';
import 'package:compod_app/voluntary/views/components/voluntary_big_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoluntarySelectView extends GetView<VoluntaryController>{
  VoluntarySelectView({Key? key}) : super(key: key);

  @override
  final Controller = Get.put(VoluntaryController());

  @override
  Widget build(BuildContext context){
    return CompodScaffold(
        appBarTitle: "Voluntariado",
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(16), child: Text("Selecione o tipo de voluntariado", textAlign: TextAlign.center, style: Get.textTheme.headline4)),
          // CompodRaisedButton(buttonText: "VOLUNTARIO 1", padding: 8.0, action: (){}),
          // CompodRaisedButton(buttonText: "VOLUNTARIO 2", padding: 8.0, action: (){}),
          // CompodRaisedButton(buttonText: "VOLUNTARIO 3", padding: 8.0, action: (){}),
          VoluntaryBigButton(type: VoluntaryType.psychology),
          VoluntaryBigButton(type: VoluntaryType.psychopedagogy),
          VoluntaryBigButton(type: VoluntaryType.others),
        ],
      )
    );
  }
}