import 'package:flutter/foundation.dart';

class InternationTranslations {
  static Map<String, String> get keys => {
        FormsStringsEnum.psychologicalTreatment.name: 'Atendimento Psicológico',
        FormsStringsEnum.hospitalization.name: 'Internação',
        FormsStringsEnum.psychologicalTreatmentLineBreak.name: 'Atendimento\nPsicológico',
        FormsStringsEnum.socialAssistanceLineBreak.name: 'Assistência\nSocial',
        FormsStringsEnum.socialAssistance.name: 'Assistência Social',
        FormsStringsEnum.juridical.name: 'Jurídico',
        FormsStringsEnum.voluntaryHospitalization.name: 'Internação\nVoluntária',
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

extension FormsStringsEnumExt on FormsStringsEnum {
  String get name => describeEnum(this);
}
