import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text(
            'Hola Mundo',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade500,
        ),
        body: const MiContenedor(),
      ),
    );
  }
}

// Casos para cuando el widget appBar es igual para todas las pantallas
class MiContenedor extends StatelessWidget {
  const MiContenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Icon(Icons.favorite, color: Colors.red, size: 50.0),
          // child: Text('Hello World'),
        ),
        Text('Hello World'),
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.favorite, color: Colors.green, size: 50.0),
        )
      ],
    );
  }
}
