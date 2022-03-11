import 'package:compod_app/voluntary/voluntary_strings.dart';

enum VoluntaryType {
  psychology,
  psychopedagogy,
  others,
}

extension VoluntaryTypeExt on VoluntaryType {
  String get text {
    switch (this) {
      case VoluntaryType.psychology: return VoluntaryStrings.psychology.tr;
      case VoluntaryType.psychopedagogy: return VoluntaryStrings.psychopedagogy.tr;
      case VoluntaryType.others: return VoluntaryStrings.others.tr;
    }
  }
}

