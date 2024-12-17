import 'package:flutter/material.dart';
import 'package:flutter_training/section_20/constants/app_constants.dart';

class ShowAverage extends StatelessWidget {
  final double average;
  final int classCount;
  const ShowAverage({super.key, required this.average, required this.classCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          classCount>0? '$classCount included' : 'Please enter the class',style: Constants.countClassStyle,
        ),
        Text(average >= 0 ? '${average.toStringAsFixed(2)}' : '0.0', style: Constants.averageStyle, ),
        Text('Ortalama',style: Constants.countClassStyle,),
      ],
    );
  }
}
