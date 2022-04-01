import 'package:get/get.dart';

class HospitalizationTranslations {
  static Map<String, String> get keys => {
        HospitalizationStringsEnum.psychologicalTreatment.tr: 'Atendimento Psicológico',
        HospitalizationStringsEnum.hospitalization.tr: 'Internação',
        HospitalizationStringsEnum.psychologicalTreatmentLineBreak.tr: 'Atendimento\nPsicológico',
        HospitalizationStringsEnum.socialAssistanceLineBreak.tr: 'Assistência\nSocial',
        HospitalizationStringsEnum.socialAssistance.tr: 'Assistência Social',
        HospitalizationStringsEnum.juridical.tr: 'Jurídico',
        HospitalizationStringsEnum.voluntaryHospitalization.tr: 'Internação Voluntária em\nComunidades Terapêuticas ',
        HospitalizationStringsEnum.formsSelectViewHeader.tr: 'Selecione o tipo\nde internação',
        HospitalizationStringsEnum.successFormsMessage.tr: 'Obrigado pela inscrição!\n\nRecebemos suas informações com sucesso!\n\nAssim que possível entraremos em contato.',
        HospitalizationStringsEnum.failureFormsMessage.tr: 'Falha ao enviar os dados.\n\nPor favor tentar novamente mais tarde.',
        HospitalizationStringsEnum.thisFieldMustBeFilled.tr: 'Este campo deve ser preenchido',
        HospitalizationStringsEnum.fillWithPatientInfo.tr: 'Preencha o formulário com as informações do paciente',

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
  failureFormsMessage,
  thisFieldMustBeFilled,
  fillWithPatientInfo,
}

extension HospitalizationStringsEnumExt on HospitalizationStringsEnum {
  String get tr => toString().tr;
}
