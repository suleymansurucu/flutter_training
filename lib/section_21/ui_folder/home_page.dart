import 'package:flutter/material.dart';
import 'package:flutter_training/section_16/listView_builder.dart';

import '../models/data.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Data> alldata;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alldata=[
      Data('Biz Kimiz', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Biz Neredeyiz', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Biz Misyonumuz', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Biz Viztonumuz', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Iletisim', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Iletisim', false ,'Biz kimizin icerikleri burada yer aliyor.'),
      Data('Iletisim', false ,'Biz kimizin icerikleri burada yer aliyor.'),
    ];

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ExpansionTile(key: PageStorageKey('$index'), title: Text(alldata[index].title),
        initiallyExpanded: alldata[index].expanded,
        children: [
          Container(
            color: index %2== 0 ? Colors.purple.shade200 : Colors.brown.shade200,
            height: 100,
            width: double.infinity,
            child: Text(alldata[index].content),
          )
        ],

      );
    }, itemCount: alldata.length,);
  }
}
