import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Ejemplo Expanded'),
            centerTitle: true,
            backgroundColor: Colors.greenAccent[400],
          ),
          body: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: const Text('Hola'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: const Text('Hola 2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: const Text('Hola 3'),
                ),
              ),
            ],
          )),
    );
  }
}
