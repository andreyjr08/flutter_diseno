import 'package:flutter/material.dart';
import 'package:prueba_diseno/prueba_responsive.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Localstorage Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new PruebaResponsive(),
    );
  }
}
