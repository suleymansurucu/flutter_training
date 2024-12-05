import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardandList extends StatelessWidget {
  const CardandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List Tile"),
      ),
      body: Center(
        // child: CreateList(),
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                onlyList(),
                Text("This List is example"),
                ElevatedButton(onPressed: (){}, child: Text('Clikc it')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

SingleChildScrollView CreateList() {
  return SingleChildScrollView(
    child: Column(
      children: [
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
        onlyList(),
      ],
    ),
  );
}

Column onlyList() {
  return Column(
    children: [
      Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.deepPurpleAccent.shade100,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text("Title"),
            subtitle: Text("subTitle"),
            trailing: Icon(Icons.real_estate_agent_outlined),
          )),
      Divider(
        color: Colors.red,
        thickness: 1,
        height: 5,
        indent: 60,
        endIndent: 60,
      ),
    ],
  );
}
