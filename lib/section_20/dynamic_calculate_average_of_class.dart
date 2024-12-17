import 'package:flutter/material.dart';
import 'package:flutter_training/section_20/constants/app_constants.dart';
import 'package:flutter_training/section_20/widgets/calculate_average_page.dart';
import 'package:google_fonts/google_fonts.dart';
main() {
  runApp(MyApp());
  GoogleFonts.config.allowRuntimeFetching=true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Calculate Average of Lessons ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Constants.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: CalculateAveragePage(),
    );
  }
}
