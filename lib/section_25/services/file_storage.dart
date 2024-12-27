
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_training/section_25/model/my_models.dart';
import 'package:path_provider/path_provider.dart';

import 'local_stroga_services.dart';

class FileStorageService implements LocalStorageService {

  _getFilePath() async{
    var filePath = await getApplicationCacheDirectory();
    debugPrint(filePath.path);
    return filePath.path;
  }
Future<File>  _createFile() async{
    var file= File(await _getFilePath()+'/info.txt');
    return file;
  }

  FileStorageService(){
    _createFile();
  }
  Future<void> savedValues(UserInformation userInformation) async {
    var file = await _createFile();
    await file.writeAsString(jsonEncode(userInformation));
  }

  Future<UserInformation> readValues() async {
    try {
      var file = await _createFile();
      var fileStringContent = await file.readAsString();
      var json = jsonDecode(fileStringContent);
      return UserInformation.fromJson(json);
    } catch(e){
      print(e);
    }
    return UserInformation('', Gender.WOMEN, [], false);
  }
}
