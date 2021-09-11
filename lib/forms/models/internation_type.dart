import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/forms/internation_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

enum InternationType {
  internation,
  juridical,
  psychology,
  voluntary
}
extension InternationTypeExt on InternationType {
  String get name => describeEnum(this);

  String get image {
    switch (this) {
      case InternationType.internation: return AppImages.Psycho;
      case InternationType.juridical: return AppImages.Hospital;
      case InternationType.psychology: return AppImages.Judge;
      case InternationType.voluntary: return AppImages.Volunteer;
    }
  }

  String get text {
    switch (this) {
      case InternationType.internation: return FormsStringsEnum.socialAssistance.name.tr;
      case InternationType.juridical: return FormsStringsEnum.juridical.name.tr;
      case InternationType.psychology: return FormsStringsEnum.psychologicalTreatment.name.tr;
      case InternationType.voluntary: return FormsStringsEnum.voluntaryHospitalization.name.tr;
    }
  }

}