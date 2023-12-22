import 'package:aprendiendo/hola_mundo.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //const String persona = 'Urian V';

    return const MaterialApp(
      title: 'Mi App',
      debugShowCheckedModeBanner: false,
      home: HolaMundo(),
    );
  }
}
