import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/forms/internation_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(70.0, 50.0, 70.0, 0.0),
              child: Column(
                children: [
                  Image.asset('assets/images/icons/Check.png', height: 150, width: 150),
                  Text('\n\nObrigado pela inscrição!\n\nRecebemos suas informações com sucesso!\n\nAssim que possível entraremos em contato.', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
