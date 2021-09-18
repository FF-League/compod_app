import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/forms/hospitalization_strings.dart';
import 'package:flutter/foundation.dart';

enum HospitalizationType {
  hospitalization,
  juridical,
  psychology,
  voluntary
}
extension HospitalizationTypeExt on HospitalizationType {
  String get name => describeEnum(this);

  String get image {
    switch (this) {
      case HospitalizationType.hospitalization: return CompodImages.Psycho;
      case HospitalizationType.juridical: return CompodImages.Hospital;
      case HospitalizationType.psychology: return CompodImages.Judge;
      case HospitalizationType.voluntary: return CompodImages.Volunteer;
    }
  }

  String get text {
    switch (this) {
      case HospitalizationType.hospitalization: return FormsStringsEnum.socialAssistance.tr;
      case HospitalizationType.juridical: return FormsStringsEnum.juridical.tr;
      case HospitalizationType.psychology: return FormsStringsEnum.psychologicalTreatment.tr;
      case HospitalizationType.voluntary: return FormsStringsEnum.voluntaryHospitalization.tr;
    }
  }

}