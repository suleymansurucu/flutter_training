import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  var myController = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool witdhExen= true;
  bool pageSnipping = true;
  bool reverseCount=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection: witdhExen== true ?  Axis.horizontal : Axis.vertical,
            reverse: reverseCount,
            controller: myController,
            pageSnapping: pageSnipping,
            onPageChanged: (index){
              debugPrint('index value is $index');
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: const Center(child: Text('First page', style: TextStyle(fontSize: 30),),),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amberAccent.shade100,
                child: const Center(child: Text('2 page', style: TextStyle(fontSize: 30),),),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.tealAccent.shade100,
                child: const Center(child: Text('3 page', style: TextStyle(fontSize: 30),),),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.green.shade300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text('select with width'),
                     Checkbox(value: witdhExen, onChanged: (value){
                       setState(() {
                         witdhExen = value!;
                       });
                     })
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text('Page sinif'),
                    Checkbox(value: pageSnipping, onChanged: (value){
                      setState(() {
                        pageSnipping=value!;
                      });
                    })
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text('Reverse apply'),
                    Checkbox(value: reverseCount, onChanged: (value){
                      setState(() {
                        reverseCount=value!;
                      });
                    })
                  ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
