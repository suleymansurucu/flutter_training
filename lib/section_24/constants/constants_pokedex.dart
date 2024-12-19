import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants_Pokedex {
  Constants_Pokedex._();

  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: _calculatorFontSize(48));
  }
  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: _calculatorFontSize(24));
  }
  static TextStyle getTypeChipTextStyle() {
    return  TextStyle(
        color: Colors.white, fontSize: _calculatorFontSize(16));
  }

  static _calculatorFontSize(int size){
    if (ScreenUtil().orientation ==Orientation.portrait) {
      return size.sp;
    }  else {
      return (size*1.0).sp;
    }
  }
}
