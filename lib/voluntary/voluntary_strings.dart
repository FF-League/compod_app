import 'package:get/get.dart';

class VoluntaryTranslations {
  static Map<String, String> get keys => {
        VoluntaryStringsEnum.psychology.name: 'Psicólogo',
        VoluntaryStringsEnum.psychopedagogy.name: 'Psicopedagogo',
        VoluntaryStringsEnum.others.name: 'Outros tipos\nde voluntário',
    };
  }

  enum VoluntaryStringsEnum {
    psychology,
    psychopedagogy,
    others,
  }

extension VoluntaryStringsEnumExt on VoluntaryStringsEnum {
  String get tr => name.tr;
}