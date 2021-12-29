import 'package:get/get.dart';

class HomeTranslations {
  static Map<String, String> get keys => {
    HomeStringsEnum.miniBook.name: 'Cartilha',
    HomeStringsEnum.volunteer.name: 'Seja um voluntário',
    HomeStringsEnum.hospitalization.name: 'Solicitar atendimento',
    HomeStringsEnum.about.name: 'Sobre o COMPOD',
    HomeStringsEnum.contact.name: 'Contato',
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
  String get tr => name.tr;
}
