import 'package:flutter/material.dart';
import 'package:flutter_training/section_18/Model/burc.dart';
import 'package:flutter_training/section_18/burc_detay.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listelenenBurc)));
            },
            leading: Image.asset("images/"+listelenenBurc.burcKucukResim,),
            title: Text(listelenenBurc.burcAdi,
            style: myTextStyle.headlineLarge,),
            subtitle: Text(listelenenBurc.burcTarihi,
            style: myTextStyle.bodyMedium,),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}
