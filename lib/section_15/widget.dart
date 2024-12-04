import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue

      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.purple,fontWeight: FontWeight.bold
        )
      ),
      ),

      home: MyHomePage(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter1=0;
  @override
  Widget build(BuildContext context) {


    return  Container(
      child: Scaffold(

        appBar: AppBar(
          title: Text("My Counter AppBar",
          ),
          // backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("How many times clicked on button", style: TextStyle(fontSize: 24, )),
              Text(counter1.toString(), style: Theme.of(context).textTheme.headlineLarge),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          debugPrint('button tiklandi ve sayac $counter1');
          counterCall();
        }, child: Icon(Icons.add),backgroundColor: Colors.green,
        ),
      ),

    );


  }
  void counterCall() {
    setState((){
counter1++;
    });
}


}



