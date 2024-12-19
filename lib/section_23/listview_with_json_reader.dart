import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  String _title = 'Local Json Islemleri';
  late final Future<List<Araba>> _listeyiDoldur;

  @override
  void initState() {
    super.initState();
    _listeyiDoldur = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _title = 'buttona tiklandi';
        });
      }),
      body: FutureBuilder<List<Araba>>(
          future: _listeyiDoldur,
          initialData: [Araba(arabaAdi: 'KIA', ulke: 'JAPONYA', kurulusYil: 1989, model: [Model(modelAdi: 'SORENTO', fiyat: 50000, benzinli: true)])],
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Araba> arabaListesi = snapshot.data!;
              return ListView.builder(
                  itemCount: arabaListesi.length,
                  itemBuilder: (context, index) {
                    Araba oankiAraba = arabaListesi[index];
                    return ListTile(
                      title: Text(oankiAraba.arabaAdi),
                      subtitle: Text(oankiAraba.ulke),
                      leading: CircleAvatar(
                          child: Text(oankiAraba.model[0].fiyat.toString())),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<Araba>> arabalarJsonOku() async {
    try {
      String okunanString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/arabalar.json');
      var jsonObject = jsonDecode(okunanString);
      // debugPrint(jsonObject);
      // debugPrint('***********');
      //
      // List arabaListesi = jsonObject;
      // debugPrint(arabaListesi[1]['model'][0]['fiyat'].toString());

      List<Araba> tumArabalar = (jsonObject as List)
          .map((arabaMap) => Araba.fromJson(arabaMap))
          .toList();
      print(tumArabalar[0].model[0].modelAdi);
      debugPrint(tumArabalar.length.toString());

      return tumArabalar;
    } catch (e) {
      debugPrint(AutofillHints.email.toString());
      return Future.error(e.toString());
    }
  }
}
