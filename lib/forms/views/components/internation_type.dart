import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

enum InternationType {
  internation,
  legal,
  psychology,
  voluntary
}
extension InternationTypeExt on InternationType {
  String get name => describeEnum(this);

  String get image {
    switch (this) {
      case InternationType.internation: return AppImages.Psycho;
      case InternationType.legal: return AppImages.Hospital;
      case InternationType.psychology: return AppImages.Judge;
      case InternationType.voluntary: return AppImages.Volunteer;
    }
  }

  String get text {
    switch (this) {
      case InternationType.internation: return FormsStringsEnum.psychologicalTreatmentLineBreak.name.tr;
      case InternationType.legal: return FormsStringsEnum.juridical.name.tr;
      case InternationType.psychology: return FormsStringsEnum.socialAssistanceLineBreak.name.tr;
      case InternationType.voluntary: return FormsStringsEnum.voluntaryHospitalization.name.tr;
    }
  }

}