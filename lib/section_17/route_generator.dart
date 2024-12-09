import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/section_17/main_navigations.dart';
import 'package:flutter_training/section_17/red_page.dart';
import 'package:flutter_training/section_17/student_detail.dart';
import 'package:flutter_training/section_17/student_lists.dart';
import 'package:flutter_training/section_17/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _createRoute(Widget routeWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => routeWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings,
          builder: (context) => routeWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/studentList':
        print(settings.name);
        print(settings.arguments);
        return _createRoute(StudentLists(),settings);





      case '/':
        return _createRoute(HomePage(),settings);

      case '/redPage':
        return _createRoute(RedPage(),settings);

      case '/yellowPage':
        return _createRoute(YellowPage(),settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("Error"),
            ),
            body: Center(
              child: Text("404"),
            ),
          ),
        );
    }
  }
}
