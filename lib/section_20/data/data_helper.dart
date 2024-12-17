import 'package:flutter/material.dart';
import 'package:flutter_training/section_20/model/lesson.dart';

class DataHelper {

  static List<Lesson> allAddLessons = [];
  static addLesson(Lesson lesson){
    allAddLessons.add(lesson);
  }
  static calculateGPA(){
    double sumAlphabetValue = 0;
    double sumCreditValue = 0;

    allAddLessons.forEach((element){
      sumAlphabetValue=sumAlphabetValue+(element.valueOfCredits * element.valueOfAlhapet);
      sumCreditValue = sumCreditValue + element.valueOfCredits;
    });
    return sumAlphabetValue/sumCreditValue;
  }
  static List<String> _allResultClassAlphapet() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static double _alphapetToNumberValue(String alphabet) {
    switch (alphabet) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3.0;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2.0;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1;
      case 'FD' :
        return 0.5;
      case 'FF' :
        return 0;
        default:
          return 1;
    }
  }

  static List<DropdownMenuItem<double>> allClassResultAlphapet(){
    return _allResultClassAlphapet().map((e) =>DropdownMenuItem(child: Text(e), value: _alphapetToNumberValue(e),) ).toList();
  }
  static List<int> _allCredits(){
    return List<int>.generate(10, (index)=> index +1).toList();
  }

  static List<DropdownMenuItem<double>> allClassCredits(){
    return _allCredits().map((e)=>DropdownMenuItem(child: Text(e.toString()),value: e.toDouble(),)).toList();
  }



}

