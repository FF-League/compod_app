import 'package:compod_app/voluntary/voluntary_strings.dart';

enum VoluntaryType {
  psychology,
  psychopedagogy,
  others,
}

extension VoluntaryTypeExt on VoluntaryType {
  String get text {
    switch (this) {
      case VoluntaryType.psychology: return VoluntaryStringsEnum.psychology.tr;
      case VoluntaryType.psychopedagogy: return VoluntaryStringsEnum.psychopedagogy.tr;
      case VoluntaryType.others: return VoluntaryStringsEnum.others.tr;
    }
  }
}

