
import 'package:get/get.dart';

class MiniBookTranslations {
  static Map<String, String> get keys => {
    MiniBookStringsEnum.name.name: 'Cartilha',
  };
}

enum MiniBookStringsEnum {
  name,
}

extension on MiniBookStringsEnum {
  String get name => this.toString();

}

extension MiniBookStringsEnumExt on MiniBookStringsEnum {
  String get tr => name.tr;

}
