import 'package:flutter/material.dart';
import 'package:aprendiendo/hola_mundo.dart';
import 'package:aprendiendo/imagen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi App con Varias Pantallas'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HolaMundo(),
            Imagen(),
          ],
        ),
      ),
    );
  }
}
