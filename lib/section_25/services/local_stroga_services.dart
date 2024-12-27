import 'package:flutter_training/section_25/model/my_models.dart';

abstract class LocalStorageService{
  Future<void> savedValues(UserInformation userInformation);
  Future<UserInformation> readValues();
}