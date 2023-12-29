import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiContenedor(),
    );
  }
}

class MiContenedor extends StatelessWidget {
  const MiContenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'Hola Mundo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade500,
      ),
      body: const Center(
        child: Icon(Icons.favorite, color: Colors.red, size: 50.0),
        //child: Text('Hello World'),
      ),
    );
  }
}
