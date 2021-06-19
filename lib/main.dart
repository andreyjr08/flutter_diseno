import 'package:flutter/material.dart';
import 'package:prueba_diseno/home.dart';
import 'package:prueba_diseno/prueba_responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'pruebar',
      routes: {
        'home': (_) => Home('', ''),
        'pruebar': (_) => PruebaResponsive(),
      
      },
    );
  }
}
