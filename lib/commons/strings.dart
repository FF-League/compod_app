import 'package:compod_app/forms/internation_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Strings extends Translations {
  Map<String, String> get getMaps => {
        ...commonMaps,
        ...InternationTranslations.keys,
      };

  static Map<String, String> get commonMaps => {
        StringsEnum.COMPOD.name: "COMPOD",
        StringsEnum.continueButton.name: "Continuar",
      };

  @override
  Map<String, Map<String, String>> get keys => {'pt_BR': getMaps};
}

enum StringsEnum {
  COMPOD,
  continueButton,
}

extension StringsEnumExt on StringsEnum {
  String get name => describeEnum(this);
}
