import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_training/section_25/model/my_models.dart';

import 'local_stroga_services.dart';

class SecureStorageService implements LocalStorageService {
  late final FlutterSecureStorage preference;
  SecureStorageService(){
    debugPrint('SecureStroage is working');
    preference = const FlutterSecureStorage();
  }
  // Doğrudan başlatma

  Future<void> savedValues(UserInformation userInformation) async {
    try {
      final _name = userInformation.name;
      await preference.write(key: 'name', value: _name);
      await preference.write(
          key: 'student', value: userInformation.isStudent.toString());
      await preference.write(
          key: 'gender', value: userInformation.gender.index.toString());
      await preference.write(
          key: 'favouriteColor', value: jsonEncode(userInformation.colors));

      debugPrint("Kaydedilen renkler: ${jsonEncode(userInformation.colors)}");
    } catch (e) {
      debugPrint('Değerler kaydedilirken hata oluştu: $e');
    }
  }

  Future<UserInformation> readValues() async {
    try {
      final _name = await preference.read(key: 'name') ?? '';

      final _isStudentString = await preference.read(key: 'student') ?? 'false';
      final _isStudent = _isStudentString.toLowerCase() == 'true';

      final _genderString = await preference.read(key: 'gender') ?? '0';
      final _gender = Gender.values[int.parse(_genderString)];

      final _colorsString = await preference.read(key: 'favouriteColor');
      final _colors = _colorsString == null
          ? <String>[]
          : List<String>.from(jsonDecode(_colorsString));

      return UserInformation(_name, _gender, _colors, _isStudent);
    } catch (e) {
      debugPrint('Değerler okunurken hata oluştu: $e');
      // Hata durumunda varsayılan değerler döndürülür
      return UserInformation('', Gender.WOMEN, [], false);
    }
  }
}
