import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training/section_24/pages/HomePagePokemon.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(const MyApp24());
}

class MyApp24 extends StatelessWidget {
  const MyApp24({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex', color: Colors.white,
        theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: const HomePagePokemon(),
      ),
    );
  }
}
