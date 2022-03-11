import 'package:get/get.dart';

class VoluntaryTranslations {
  static Map<String, String> get keys => {
        VoluntaryStrings.psychology.tr: 'Psicólogo',
        VoluntaryStrings.psychopedagogy.tr: 'Psicopedagogo',
        VoluntaryStrings.others.tr: 'Outros tipos\nde voluntário',
        VoluntaryStrings.selectVoluntaryType.tr: 'Selecione o tipo de voluntário',
        VoluntaryStrings.title.tr: 'Voluntariado',
        VoluntaryStrings.fillFormWithYourData.tr: 'Preencha o formulário com seus dados',
        VoluntaryStrings.successMessage.tr: 'Sua solicitação de voluntariado foi enviada com sucesso!',
      };
}

enum VoluntaryStrings {
  psychology,
  psychopedagogy,
  others,
  selectVoluntaryType,
  title,
  fillFormWithYourData,
  successMessage,
}

extension VoluntaryStringsExt on VoluntaryStrings {
  String get tr => toString().tr;
}
