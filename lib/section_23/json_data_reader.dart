import 'package:flutter/material.dart';
import 'package:flutter_training/section_15/widget.dart';
import 'package:flutter_training/section_23/listview_with_json_reader.dart';
import 'package:flutter_training/section_23/remote_api.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage23(),
    );
  }
}

class MyHomePage23 extends StatelessWidget {
  const MyHomePage23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http, Json'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LocalJson()));
                }, child: const Text('Local Json')),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RemoteApi()));
                }, child: const Text('Remote Api')),
          ],
        ),
      ),
    );
  }
}

