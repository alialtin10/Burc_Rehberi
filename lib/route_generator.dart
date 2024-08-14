import 'package:burc_rehberi/burc_detay.dart';
import 'package:flutter/material.dart';
import 'Burc_rehberi.dart';
import 'model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenrator(RouteSettings settings){

    switch(settings.name){

      case '/':
        return MaterialPageRoute(builder: (context) => BurcRehberi());
      case'/burcDetay':
      final Burc secilen = settings.arguments as Burc;
        return MaterialPageRoute(builder: (context) => BurcDetay(secilenBurc: secilen));

    }

  }
}