import 'package:get/get.dart';

class HospitalizationTranslations {
  static Map<String, String> get keys => {
        HospitalizationStringsEnum.psychologicalTreatment.name: 'Atendimento Psicológico',
        HospitalizationStringsEnum.hospitalization.name: 'Internação',
        HospitalizationStringsEnum.psychologicalTreatmentLineBreak.name: 'Atendimento\nPsicológico',
        HospitalizationStringsEnum.socialAssistanceLineBreak.name: 'Assistência\nSocial',
        HospitalizationStringsEnum.socialAssistance.name: 'Assistência Social',
        HospitalizationStringsEnum.juridical.name: 'Jurídico',
        HospitalizationStringsEnum.voluntaryHospitalization.name: 'Internação Voluntária em\nComunidades Terapêuticas ',
        HospitalizationStringsEnum.formsSelectViewHeader.name: 'Selecione o tipo\nde internação',
        HospitalizationStringsEnum.successFormsMessage.name: 'Obrigado pela inscrição!\n\nRecebemos suas informações com sucesso!\n\nAssim que possível entraremos em contato.',
        HospitalizationStringsEnum.errorFormsMessage.name: 'Falha ao enviar os dados\nTente novamente mais tarde.',
      };
}

enum HospitalizationStringsEnum {
  psychologicalTreatment,
  psychologicalTreatmentLineBreak,
  hospitalization,
  voluntaryHospitalization,
  socialAssistance,
  socialAssistanceLineBreak,
  juridical,
  formsSelectViewHeader,
  successFormsMessage,
  errorFormsMessage,
}

extension on HospitalizationStringsEnum {
  String get name => this.toString();
}

extension HospitalizationStringsEnumExt on HospitalizationStringsEnum {
  String get tr => name.tr;
}
