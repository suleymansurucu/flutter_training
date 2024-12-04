import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text("Title", textAlign: TextAlign.center),
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          color: Colors.red.shade300,
          child: Row(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blueAccent,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.yellowAccent,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget container() {
  String url1 =
      'https://fastly.picsum.photos/id/219/200/200.jpg?hmac=A55nsncpsnDAEPuZjs3_12i2n8HJNZ5-1SVCIN2fAgc';

  return Center(
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
              topLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
          image: DecorationImage(
              image: NetworkImage(url1),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat),
          boxShadow: [
            BoxShadow(
                color: Colors.green, offset: Offset(10, 10), blurRadius: 20)
          ]),
    ),
  );
}
