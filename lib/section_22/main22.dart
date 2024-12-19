import 'package:flutter/material.dart';
import 'package:flutter_training/section_16/custom_scrool_silvers.dart';
import 'package:flutter_training/section_17/main_navigations.dart';
import 'package:flutter_training/section_18/data/strings.dart';
import 'package:flutter_training/section_22/detail_page.dart';

main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageModa(),
    );
  }
}

class HomePageModa extends StatefulWidget {
  const HomePageModa({super.key});

  @override
  State<HomePageModa> createState() => _HomePageModaState();
}

class _HomePageModaState extends State<HomePageModa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(indicatorColor: Colors.transparent, controller: tabController, tabs: const [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 22,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda Application',
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            // color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listElements('images/model1.jpeg', 'images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listElements('images/model2.jpeg', 'images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listElements('images/model3.jpeg', 'images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listElements('images/model1.jpeg', 'images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listElements('images/model2.jpeg', 'images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listElements('images/model3.jpeg', 'images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //   color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('images/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official web site feautures a ribbed knit zipper jacket that is'
                      'modern and stylishIt looks very temprament and is recommend to friends',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Ubuntu',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imgPath: 'images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'images/modelgrid1.jpeg',
                            child: Container(
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('images/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imgPath: 'images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'images/modelgrid2.jpeg',
                                child: Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage('images/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap:  (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imgPath: 'images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'images/modelgrid3.jpeg',
                                child: Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage('images/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                              child: Text(
                            '# Louis vuitton',
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 12,
                                color: Colors.brown),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                              child: Text(
                            '# Chloe',
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 12,
                                color: Colors.brown),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.4), size: 30),
                        const SizedBox(width: 10),
                        const Text(
                          '1.7k',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.4), size: 30),
                        const SizedBox(width: 10),
                        const Text(
                          '325',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite,
                                  color: Colors.red.withOpacity(1), size: 30),
                              const SizedBox(width: 10),
                              const Text(
                                '2.3k',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget listElements(String imagePath, String logoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(logoPath), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.brown,
        ),
        child: const Center(
            child: Text(
          'Follow',
          style: TextStyle(
              fontFamily: 'Ubuntu', fontSize: 14, color: Colors.white),
        )),
      ),
    ],
  );
}
