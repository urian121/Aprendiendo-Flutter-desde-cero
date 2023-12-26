import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MiContenedor(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MiContenedor extends StatelessWidget {
  const MiContenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
