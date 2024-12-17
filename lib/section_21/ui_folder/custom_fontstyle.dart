import 'package:flutter/material.dart';

class CustomFontstyle extends StatelessWidget {
  const CustomFontstyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'My First write with font-style',
            style: TextStyle(fontFamily: 'GreatVibes', fontSize: 24),
          ),
        ),
        Center(
          child: Text(
            'My First write with font-style',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
