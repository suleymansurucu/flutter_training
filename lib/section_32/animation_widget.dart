import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  Color _color = Colors.pink;
  var _width = 200.0;
  var _height = 200.0;

  var _firstChildActive = false;
  var _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Widgets'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: _height,
                width: _width,
                color: _color,
              ),
              ElevatedButton(
                  onPressed: () {
                    _animatedContainerAnimation();
                  },
                  child: Text('Animated Container')),
              AnimatedCrossFade(
                  firstChild: Image.network(
                      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  secondChild: Image.network(
                      'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  crossFadeState: _firstChildActive
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2)),
              ElevatedButton(
                  onPressed: () {
                    _crosFaderAnimation();
                  },
                  child: Text('Animated CrossFade')),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    _opacityAnimation();
                  },
                  child: Text('Animated Opacity')),
            ],
          ),
        ),
      ),
    );
  }

  void _animatedContainerAnimation() {
    setState(() {
      _color = _color == Colors.pink ? Colors.yellow : Colors.pink;
      _width = _width == 200.0 ? 300 : 200;
      _height = _height == 200.0 ? 300 : 200;
    });
  }

  void _crosFaderAnimation() {
    setState(() {
      _firstChildActive = !_firstChildActive;
    });
  }

  void _opacityAnimation() {
    setState(() {
      _opacity = _opacity == 1 ? 0.5 : 1.0;
    });
  }
}
