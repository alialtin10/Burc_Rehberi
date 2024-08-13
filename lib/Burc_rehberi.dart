import 'package:burc_rehberi/burc_item.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'data/strings.dart';

class BurcRehberi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcRehberi() {
    tumBurclar = veriKaynaginiHazirla();
  }
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burclar Listesi",style: TextStyle(fontSize: 24),),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(itemBuilder: (context,index){
            return BurcItem(listelenenburc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
          ),

        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecci = [];
    for (int i = 0; i < 12; i++) {
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Burc eklenecekVeri = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          burcKucukResim,
          burcBuyukResim);

      gecci.add(eklenecekVeri);
    }
    return gecci;
  }
}
