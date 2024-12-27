import 'package:flutter/cupertino.dart';
import 'package:flutter_training/section_25/model/my_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_stroga_services.dart';

class SharedPreferenceService implements LocalStorageService {
  late final preferences ;
  SharedPreferenceService(){
    init();
    debugPrint('Shared Preference is working');
  }
  Future<void> init() async{
    preferences =  SharedPreferences.getInstance();
  }

  Future<void> savedValues(UserInformation userInformation) async {
    final _name = userInformation.name;
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('name', _name);
    preferences.setBool('student', userInformation.isStudent);
    preferences.setInt('gender', userInformation.gender.index);
    preferences.setStringList('favouriteColor', userInformation.colors);
  }

  Future<UserInformation> readValues() async {

    var _name = preferences.getString('name') ?? '';
    var _isStudent = preferences.getBool('student') ?? false;
    var _gender = Gender.values[preferences.getInt('gender') ?? 0];
    var _colors = preferences.getStringList('favouriteColor') ?? <String>[];

    return UserInformation(_name, _gender, _colors, _isStudent);
  }
}
