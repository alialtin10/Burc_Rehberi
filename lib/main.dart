import 'package:burc_rehberi/route_generator.dart';
import 'package:flutter/material.dart';
import 'Burc_rehberi.dart';
import 'route_generator.dart';

void main(List<String> args) {
  runApp(const BurcApp());
}

class BurcApp extends StatelessWidget {
  const BurcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.pink),
        primarySwatch: Colors.pink,
        primaryColor: Colors.pink,
        
      ),
      onGenerateRoute: RouteGenerator.routeGenrator,
    );
  }
}
