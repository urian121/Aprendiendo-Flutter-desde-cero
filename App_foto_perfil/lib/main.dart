import 'package:app_2/perfil.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mi Primera App',
      debugShowCheckedModeBanner: false,
      home: Perfil(),
    );
  }
}
