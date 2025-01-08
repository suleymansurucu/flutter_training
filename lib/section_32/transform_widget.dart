import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  var sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Widget'),
      ),
      body: Column(
        children: [
          getSlider(),
          const SizedBox(
            height: 10,
          ),
          getRotate(),
          const SizedBox(
            height: 10,
          ),
          getScale(),
          const SizedBox(
            height: 10,
          ),
          getTranslate(),
        ],
      ),
    );
  }

  getSlider() {
    return Slider(
        value: sliderValue,
        min: 0.0,
        max: 100.0,
        onChanged: (value) {
          setState(() {
            sliderValue = value;
          });
        });
  }

  Container getRotate() {
    return Container(
        child: Transform.rotate(
      angle: sliderValue,
      origin: const Offset(50, 0),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    ));
  }

  Container getScale() {
    return Container(
        child: Transform.scale(
      scale: sliderValue == 0 ? 1 : sliderValue / 50,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.pink,
      ),
    ));
  }

  getTranslate() {
    return Container(
        child: Transform.translate(
      offset: Offset(sliderValue, sliderValue),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.cyan,
      ),
    ));
  }
}
