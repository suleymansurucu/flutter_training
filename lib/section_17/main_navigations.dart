import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/section_17/green_page.dart';
import 'package:flutter_training/section_17/red_page.dart';
import 'package:flutter_training/section_17/route_generator.dart';
import 'package:flutter_training/section_17/yellow_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                int _cameValue = await Navigator.push(context,
                    CupertinoPageRoute(builder: (redContext) => RedPage()));
                debugPrint(_cameValue.toString());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Click to Red Page style with IOS"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                        MaterialPageRoute(builder: (redContext) => RedPage()))
                    .then((int? value) => debugPrint(value.toString()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Click to Red Page style with IOS"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Click to Red Page style with MaybePop"),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("Yes");
                } else
                  print("No");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Click to Red Page style with canPop"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GreenPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Click to Red Page style with canPop"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/redPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
              ),
              child: Text("Click to Red Page style with PUshNamed"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/yellowPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
              ),
              child: Text("Click to Yellow Page with PUshNamed"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/studentList', arguments: 60);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade500,
              ),
              child: Text("Create a List"),
            ),

          ],
        ),
      ),
    );
  }
}
