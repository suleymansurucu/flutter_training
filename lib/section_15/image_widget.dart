import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _urlImage = "https://picsum.photos/seed/picsum/200/300";
    return MaterialApp(
      title: "My Counter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Example for Image"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red.shade300,
                width: 350,
                height: 150,
                child: Image.asset('assests/images/image1.png', fit: BoxFit.cover,),
              ),
              Container(
                color: Colors.red.shade300,
                width: 350,
                height: 150,
                child: Image.network(_urlImage,fit: BoxFit.cover),
              ),
              Container(
                color: Colors.red.shade300,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(_urlImage),
                  backgroundColor: Colors.yellowAccent,
                  radius: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
