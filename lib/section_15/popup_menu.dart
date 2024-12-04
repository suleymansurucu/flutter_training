import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyPopupMenu());
}

class MyPopupMenu extends StatefulWidget {
  const MyPopupMenu({super.key});
  @override
  State<MyPopupMenu> createState() => _MyPopupMenuState();
}
class _MyPopupMenuState extends State<MyPopupMenu> {

  var _myStateList = [
    'New York',
    'New Jersey',
    'Texas',
    'California',
    'Virginia',
    'Delaware',
    'Florida'
  ];
  var _selectedState;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Popup Menu"),
        ),
        body: Center(
          child: Column(
            children: [
              PopupMenuButton(
                onSelected: (String value){
                  debugPrint(value);
                  setState(() {
                    _selectedState=value;
                    print(_selectedState);
                  });
                },
                onOpened: (){
                  print("Opened");

                },
                  itemBuilder: (BuildContext context){
                     /*<PopupMenuEntry<String>>[
                      PopupMenuItem(child: Text('New Jersey'), value: 'New Jersey',),
                      PopupMenuItem(child: Text('New York'), value: 'New York',),
                      PopupMenuItem(child: Text('Florida'), value: 'Florida',),
                    ];*/
                    return _myStateList.map(
                            (String value)=>PopupMenuItem(
                              child: Text(value),
                              value: value,)
                    ).toList();
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

