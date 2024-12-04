import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  String _url1 =
      'https://fastly.picsum.photos/id/219/200/200.jpg?hmac=A55nsncpsnDAEPuZjs3_12i2n8HJNZ5-1SVCIN2fAgc';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text("Title", textAlign: TextAlign.center),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Container(
            child: Text(
              'Suleyman',
              style: TextStyle(fontSize: 64),
            ),
            // FlutterLogo(size: 128,
            // ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
                border: Border.all(width: 4, color: Colors.purple),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                image: DecorationImage(
                    image: NetworkImage(_url1),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat),
                boxShadow: [BoxShadow(color: Colors.green,offset: Offset(10, 10), blurRadius: 20)]),
          ),
        ),
      ),
    );
  }
}
