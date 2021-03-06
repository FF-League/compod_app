import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
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
      case HospitalizationType.hospitalization: return CompodImages.hospitalWhite;
      case HospitalizationType.juridical: return CompodImages.scale;
      case HospitalizationType.psychology: return CompodImages.psychology;
      case HospitalizationType.voluntary: return CompodImages.volunteerWhite;
    }
  }

  String get text {
    switch (this) {
      case HospitalizationType.hospitalization: return HospitalizationStringsEnum.socialAssistance.tr;
      case HospitalizationType.juridical: return HospitalizationStringsEnum.juridical.tr;
      case HospitalizationType.psychology: return HospitalizationStringsEnum.psychologicalTreatment.tr;
      case HospitalizationType.voluntary: return HospitalizationStringsEnum.voluntaryHospitalization.tr;
    }
  }

}