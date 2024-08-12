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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burc_rehberi"),
      ),
      body: Container(),
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
