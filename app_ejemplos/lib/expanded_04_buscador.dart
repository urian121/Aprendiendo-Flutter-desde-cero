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
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            children: <Widget>[
              const Text("Buscar"),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextField(),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
