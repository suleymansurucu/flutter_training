import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this);

    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
        animatable: Tween<double>(begin: 0.0, end: 1.0),
        from: Duration.zero,
        to: Duration(milliseconds: 200),
        tag: 'opacity')
        .addAnimatable(
        animatable: Tween<double>(begin: 50, end: 150),
        from: Duration(milliseconds: 250),
        to: Duration(milliseconds: 500),
        tag: 'width')
        .addAnimatable(
        animatable: Tween<double>(begin: 50, end: 150),
        from: Duration(milliseconds: 500),
        to: Duration(milliseconds: 750),
        tag: 'height')
        .addAnimatable(
        animatable: EdgeInsetsTween(
            begin: EdgeInsets.only(bottom: 16),
            end: EdgeInsets.only(bottom: 75)),
        from: Duration(milliseconds: 750),
        to: Duration(milliseconds: 1000),
        curve:Curves.easeIn,
        tag: 'padding')
        .animate(controller); // for Opacity
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Page'),
        ),
        body: Center(
          child: AnimatedBuilder(
            animation: controller,
            builder: (BuildContext context, Widget? child) {
              return Container(
                padding: sequenceAnimation['padding'].value,
                child: Opacity(
                  opacity: sequenceAnimation['opacity'].value,
                  child: Container(
                    color: Colors.red,
                    width: sequenceAnimation['width'].value,
                    height: sequenceAnimation['height'].value,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
