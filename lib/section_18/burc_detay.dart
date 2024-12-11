import 'package:flutter/material.dart';
import 'package:flutter_training/section_18/Model/burc.dart';
import 'package:palette_generator/palette_generator.dart';


class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;

  const BurcDetay({required this.secilenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appBarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appRenginiBul();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        appBar: AppBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              backgroundColor: appBarRengi,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/' + widget.secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                ),
                title: Text(widget.secilenBurc.burcAdi + 'Burcu ve Ozellikleri', style: TextStyle(color: Colors.white),),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    widget.secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            )
          ],
        ));
  }

  void appRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {

    });
    print(appBarRengi);
  }
}
