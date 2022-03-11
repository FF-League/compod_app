import 'package:get/get.dart';

class HomeTranslations {
  static Map<String, String> get keys => {
    HomeStringsEnum.miniBook.tr: 'Cartilha',
    HomeStringsEnum.volunteer.tr: 'Seja um voluntário',
    HomeStringsEnum.hospitalization.tr: 'Solicitar atendimento',
    HomeStringsEnum.about.tr: 'Sobre o COMPOD',
    HomeStringsEnum.contact.tr: 'Contato',
  };
}

enum HomeStringsEnum {
  hospitalization,
  miniBook,
  volunteer,
  about,
  contact,

}

extension HomeStringsEnumExt on HomeStringsEnum {
  String get tr => toString().tr;
}
