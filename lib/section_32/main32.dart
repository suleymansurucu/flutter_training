import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/section_17/main_navigations.dart';
import 'package:flutter_training/section_32/animation_widget.dart';
import 'package:flutter_training/section_32/new_page.dart';
import 'package:flutter_training/section_32/transform_widget.dart';

void main() {
  runApp(MyHomePage32());
}

class MyHomePage32 extends StatefulWidget {
  const MyHomePage32({super.key});

  @override
  State<MyHomePage32> createState() => _MyHomePage32State();
}

class _MyHomePage32State extends State<MyHomePage32> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animation and Motion Training',
      home: newHomePage(),
    );
  }
}

class newHomePage extends StatefulWidget {
  const newHomePage({super.key});

  @override
  State<newHomePage> createState() => _newHomePageState();
}

class _newHomePageState extends State<newHomePage> with SingleTickerProviderStateMixin{
  late AnimationController controller;
 // late Animation animation;
  // late Animation animationColor;
  late Animation animation2;
  late Animation animation3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this, duration: const Duration(seconds: 3));

    controller.addListener((){
      setState(() {
        print(controller.value.toString());
       // print(animation.value.toString());
       // print(animationColor.value.toString());


      });
    });
    controller.forward();
    controller.addStatusListener((status){
      if (status==AnimationStatus.completed) {
        controller.reverse().orCancel;
      }  else if (status==AnimationStatus.dismissed) {
        controller.forward().orCancel;
      }
      print('Status : $status');
    });
  //  animation =  Tween(begin: 20, end: 50).animate(controller);
    //animationColor = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    animation2= AlignmentTween(begin: const Alignment(-1, -1), end: const Alignment(1,1)).animate(controller);
    animation3= CurvedAnimation(parent: controller, curve: Curves.bounceIn);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation and Motion Training')),
   //   backgroundColor: animationColor.value,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              alignment: animation2.value,
                child: Text('0', style: TextStyle(fontSize: controller.value*36),),),
            const Hero(tag: 'picture', child: FlutterLogo(
              size: 64,
            )),
          Text('Suleyman Surucu', style: TextStyle(fontSize: animation3.value*40),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NewPage()));
            }, child: const Text('Next Page')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AnimationWidget()));
            }, child: const Text('Next Animation Widget Page')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TransformWidget()));
            }, child: const Text('Next Transform Widget Page')),
          ],
        ),
      ),
    );
  }
}

