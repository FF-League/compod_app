import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/foundation.dart';

class HospitalizationForm {

  var name = '';
  var job = '';
  var email = '';
  var age = 0;
  var phone = '';
  var sex = '';
  var text = '';
  HospitalizationType? treatment;
  var viewed = false;

  Map<String, dynamic> get toJson => {
  'name' : name,
  'job' : job,
  'email' : email,
  'age' : age,
  'phone' : phone,
  'receivedDate' : DateTime.now().toString(),
  'sex' : sex,
  'text' : text,
  'treatment' : treatment?.text,
  'viewed' : viewed,
  };
}