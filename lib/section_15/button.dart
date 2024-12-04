import 'package:flutter/material.dart';

main(){
  runApp(PropertiesButton());
}
class PropertiesButton extends StatelessWidget{
  const PropertiesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Button Examples",),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){

              }, child: Text("Text Button"),
              ),

              TextButton.icon(onPressed: (){}
                  ,icon: Icon(Icons.add),
                  label: Text("Text Button Icon"),
              ),
              ElevatedButton(onPressed: (){},
                  child: Text("Elevated Button"),
              ),
              ElevatedButton.icon(onPressed: (){
              }, 
                  icon: Icon(Icons.add),
                  label: Text("Elevated Button Icon")
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