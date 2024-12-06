import 'package:flutter/material.dart';

class CollapsableToolbarExample extends StatelessWidget {
  const CollapsableToolbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver AppBar"),
          backgroundColor: Colors.redAccent,
          expandedHeight: 200,
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            listElements(),

          ),
        ),
      ],
    );
  }
}

List<Widget> listElements(){
  return [
    Container(
      height: 200,
      child: Text("Hello"),
    ),
    Container(
      height: 200,
      child: Text("Hello"),
    ),
    Container(
      height: 200,
      child: Text("Hello"),
    ),
    Container(
      height: 200,
      child: Text("Hello"),
    ),
    Container(
      height: 200,
      child: Text("Hello"),
    ),
    Container(
      height: 200,
      child: Text("Hello"),
    ),
  ];
}