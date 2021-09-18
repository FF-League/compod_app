import 'package:get/get.dart';

class HospitalizationTranslations {
  static Map<String, String> get keys => {
        FormsStringsEnum.psychologicalTreatment.name: 'Atendimento Psicológico',
        FormsStringsEnum.hospitalization.name: 'Internação',
        FormsStringsEnum.psychologicalTreatmentLineBreak.name: 'Atendimento\nPsicológico',
        FormsStringsEnum.socialAssistanceLineBreak.name: 'Assistência\nSocial',
        FormsStringsEnum.socialAssistance.name: 'Assistência Social',
        FormsStringsEnum.juridical.name: 'Jurídico',
        FormsStringsEnum.voluntaryHospitalization.name: 'Internação Voluntária em\nComunidades Terapêuticas ',
        FormsStringsEnum.formsSelectViewHeader.name: 'Selecione o tipo\nde internação',
        FormsStringsEnum.successFormsMessage.name: 'Obrigado pela inscrição!\n\nRecebemos suas informações com sucesso!\n\nAssim que possível entraremos em contato.',
      };
}

enum FormsStringsEnum {
  psychologicalTreatment,
  psychologicalTreatmentLineBreak,
  hospitalization,
  voluntaryHospitalization,
  socialAssistance,
  socialAssistanceLineBreak,
  juridical,
  formsSelectViewHeader,
  successFormsMessage,
}

extension on FormsStringsEnum {
  String get name => this.toString();
}

extension HospitalizationStringsEnumExt on FormsStringsEnum {
  String get tr => name.tr;
}
