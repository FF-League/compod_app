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
        HospitalizationStringsEnum.thisFieldMustBeFilled.name: 'Este campo deve ser preenchido',
        HospitalizationStringsEnum.fillWithPatientInfo.name: 'Preencha o formulário com as informações do paciente',
        HospitalizationFieldsStringsEnum.name.name: 'Nome',
        HospitalizationFieldsStringsEnum.gender.name: 'Sexo',
        HospitalizationFieldsStringsEnum.address.name: 'Endereço',
        HospitalizationFieldsStringsEnum.male.name: 'Masculino',
        HospitalizationFieldsStringsEnum.female.name: 'Feminino',
        HospitalizationFieldsStringsEnum.other.name: 'Outro',
        HospitalizationFieldsStringsEnum.age.name: 'Idade',
        HospitalizationFieldsStringsEnum.phoneWithAreaCode.name: 'Telefone com DDD',
        HospitalizationFieldsStringsEnum.job.name: 'Profissão',
        HospitalizationFieldsStringsEnum.email.name: 'E-mail',
        HospitalizationFieldsStringsEnum.description.name: 'Descreva melhor a situação',
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
  thisFieldMustBeFilled,
  fillWithPatientInfo,
}

enum HospitalizationFieldsStringsEnum {
  name,
  age,
  gender,
  male,
  female,
  other,
  email,
  phoneWithAreaCode,
  address,
  job,
  description,
}

extension HospitalizationStringsEnumExt on HospitalizationStringsEnum {
  String get tr => name.tr;
}

extension HospitalizationFieldsStringsEnumExt on HospitalizationFieldsStringsEnum {
  String get tr => name.tr;
}
