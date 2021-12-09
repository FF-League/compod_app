import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/mini_book/mini_book_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Strings extends Translations {
  Map<String, String> get getMaps => {
        ...commonMaps,
        ...HospitalizationTranslations.keys,
        ...MiniBookTranslations.keys,
      };

  static Map<String, String> get commonMaps => {
        StringsEnum.compod.name: 'COMPOD',
        StringsEnum.continueButton.name: 'Continuar',
        StringsEnum.sendButton.name: 'Enviar',
      };

  @override
  Map<String, Map<String, String>> get keys => {'pt_BR': getMaps};
}

enum StringsEnum {
  compod,
  continueButton,
  sendButton
}

extension on StringsEnum {
  String get name => describeEnum(this);
}

extension StringsEnumExt on StringsEnum {
  String get tr => name.tr;
}
