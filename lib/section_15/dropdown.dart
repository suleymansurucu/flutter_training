import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyDropDown());
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
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
          backgroundColor: Colors.blue.shade300,
          appBar: AppBar(
            title: Text("Dropdown Example Title"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  hint: Text("Choose Your Living State"),
                    icon: Icon(Icons.add),
                    iconSize: 32,
                    underline: Container(
                      height: 2,
                      color: Colors.blue,
                    ),


                    items: _myStateList
                        .map((String element) => DropdownMenuItem(
                      child: Text(element),
                      value: element,
                    ))
                        .toList(),
                    value: _selectedState,
                    onChanged: (dynamic value) {
                      setState(() {
                        _selectedState=value;
                      });
                    })
              ],
            ),
          ),
        ));
  }
}