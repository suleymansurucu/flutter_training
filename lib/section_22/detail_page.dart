import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  var imgPath;

  DetailPage({this.imgPath, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 30,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage('images/dress.jpg'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Louis Vuitton',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontFamily: 'Ubuntu',
                                  ),
                            ),
                            const SizedBox(height: 10,),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width-180,
                              child: const Text(
                                'denememeememem mememfkhsdfjshknflshdfljk dsadh',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10, bottom: 2),
                      child: Row(
                        children: [
                          const Text('\$6500', style: TextStyle(fontFamily: 'Ubuntu', fontSize: 22,), ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              backgroundColor: Colors.brown,
                                onPressed: (){},
                              child: Center(child: Icon(Icons.arrow_forward_ios))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height/2,
              left: 50,
              child: Container(
                height: 40,
                  width: 140,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text('LAMINATED', style: TextStyle(fontFamily: 'Ubuntu', color: Colors.white, fontWeight: FontWeight.bold),),
                     Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                  ],
                ),


              ),
          ),
        ],
      ),
    );
  }
}
