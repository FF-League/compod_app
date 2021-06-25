import 'package:flutter/foundation.dart';

class FormsTranslations {
  static Map<String, String> get keys => {
        FormsStringsEnum.psychologicalTreatment.name: 'Atendimento Psicológico',
        FormsStringsEnum.hospitalization.name: 'Internação',
        FormsStringsEnum.psychologicalTreatmentLineBreak.name: 'Atendimento\nPsicológico',
        FormsStringsEnum.socialAssistanceLineBreak.name: 'Assistência\nSocial',
        FormsStringsEnum.juridical.name: 'Jurídico',
        FormsStringsEnum.voluntaryHospitalization.name: 'Internação\nVoluntária',
        FormsStringsEnum.formsSelectViewHeader.name: 'Selecione o tipo\nde internação'
      };
}

enum FormsStringsEnum {
  psychologicalTreatment,
  psychologicalTreatmentLineBreak,
  hospitalization,
  voluntaryHospitalization,
  socialAssistanceLineBreak,
  juridical,
  formsSelectViewHeader
}

extension FormsStringsEnumExt on FormsStringsEnum {
  String get name => describeEnum(this);
}
