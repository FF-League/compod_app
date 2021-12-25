
import 'package:get/get.dart';

class MiniBookTranslations {
  static Map<String, String> get keys => {
    MiniBookStringsEnum.name.name: 'Cartilha',
  };
}

enum MiniBookStringsEnum {
  name,
}

extension MiniBookStringsEnumExt on MiniBookStringsEnum {
  String get tr => name.tr;

}
