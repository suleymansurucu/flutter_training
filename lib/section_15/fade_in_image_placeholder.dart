import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

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
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      width: 350,
                      height: 150,
                      child: Image.asset('assets/images/image1.png', fit: BoxFit.cover,),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      width: 350,
                      height: 150,
                      child: Image.network(_urlImage,fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(_urlImage),
                        backgroundColor: Colors.yellowAccent,
                        radius: 40,
                      ),
                    ),
                  ),
                  ],
                ),
              ),
              Container(
                child:
                FadeInImage.assetNetwork(placeholder: 'assets/images/image1.png', image: _urlImage
                ),
              ),
              Expanded(child: Placeholder())
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
