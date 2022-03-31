import 'package:compod_app/home/home_strings.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:compod_app/mini_book/mini_book_strings.dart';
import 'package:compod_app/voluntary/voluntary_strings.dart';
import 'package:get/get.dart' as g;

class Translations extends g.Translations {
  Map<String, String> get getMaps => {...commonStrings, ...HospitalizationTranslations.keys, ...VoluntaryTranslations.keys, ...MiniBookTranslations.keys, ...HomeTranslations.keys};

  static Map<String, String> get commonStrings => {
        FormStrings.name.tr: 'Nome',
        FormStrings.gender.tr: 'Sexo',
        FormStrings.address.tr: 'Endereço',
        FormStrings.male.tr: 'Masculino',
        FormStrings.female.tr: 'Feminino',
        FormStrings.other.tr: 'Outro',
        FormStrings.age.tr: 'Idade',
        FormStrings.phoneWithAreaCode.tr: 'Telefone com DDD',
        FormStrings.job.tr: 'Profissão',
        FormStrings.email.tr: 'E-mail',
        FormStrings.describeSituation.tr: 'Descreva melhor a situação',
        FormStrings.tellUsAboutYou.tr: 'Conte-nos um pouco sobre você',
        CommonStrings.compod.tr: 'COMPOD',
        CommonStrings.continueButton.tr: 'Continuar',
        CommonStrings.sendButton.tr: 'Enviar',
        CommonStrings.connectionError.tr: 'Sem conexão com a internet. Por favor, verifique sua conexão e tente novamente.',
        CommonStrings.internalError.tr: 'Ocorreu um erro ao conecar-se com o servidor. Por favor, tente novamente mais tarde.',
        CommonStrings.backButton.tr: 'Voltar',
      };

  @override
  Map<String, Map<String, String>> get keys => {'pt_BR': getMaps};
}

enum CommonStrings {
  compod,
  continueButton,
  sendButton,
  connectionError,
  internalError,
  backButton,
}

extension StringsEnumExt on CommonStrings {
  String get tr => toString().tr;
}

enum FormStrings {
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
  describeSituation,
  tellUsAboutYou,
}

extension FormStringsExt on FormStrings {
  String get tr => toString().tr;
}
