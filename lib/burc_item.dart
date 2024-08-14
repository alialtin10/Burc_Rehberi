import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';


class BurcItem extends StatelessWidget {
  final Burc listelenenburc;

  const BurcItem({required this.listelenenburc ,super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: (){
            Navigator.pushNamed(context, '/burcDetay',arguments: listelenenburc);
          },
          leading: Image.asset("/home/agv/Desktop/Burc_Rehberi/images/"+listelenenburc.burcKucukResim ),
          title: Text(listelenenburc.burcAdi,style: myTextStyle.headlineMedium,),
          subtitle: Text(listelenenburc.burcTarihi,style: myTextStyle.labelSmall,),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
        ),
      ),
    );
  }
}