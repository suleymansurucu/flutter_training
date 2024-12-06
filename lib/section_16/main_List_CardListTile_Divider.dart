import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_training/section_16/alertDialog_listBody.dart';
import 'package:flutter_training/section_16/card_list.dart';
import 'package:flutter_training/section_16/gridView_boxDecoration.dart';
import 'package:flutter_training/section_16/listView.dart';
import 'package:flutter_training/section_16/listView_builder.dart';
import 'package:flutter_training/section_16/listView_layout_Specials.dart';

import 'custom_scrool_silvers.dart';
import 'gridView_widget.dart';

main() {
  runApp(MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "titleApp",
      home: Scaffold(
        body: CollapsableToolbarExample(),
      ),
      builder: EasyLoading.init(),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}
