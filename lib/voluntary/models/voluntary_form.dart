import 'package:compod_app/voluntary/models/voluntary_type.dart';

class VoluntaryForm {

  var name = '';
  var job = '';
  var email = '';
  var age = 0;
  var phone = '';
  String? sex;
  var address = '';
  var text = '';
  VoluntaryType? type;
  var viewed = false;

  Map<String, dynamic> get toJson => {
    'name' : name,
    'job' : job,
    'email' : email,
    'age' : age,
    'phone' : phone,
    'address' : address,
    'receivedDate' : DateTime.now().toString(),
    'sex' : sex,
    'text' : text,
    'type' : type?.text,
    'viewed' : viewed,
  };
}