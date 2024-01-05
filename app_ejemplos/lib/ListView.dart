import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de ListView'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          elevation: 10.0,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Elemento 1'),
              subtitle: const Text('Descripción del elemento 1'),
              onTap: () {
                // Acción al hacer clic en el elemento 1
                print('Elemento 1 clicado');
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Elemento 2'),
              subtitle: const Text('Descripción del elemento 2'),
              onTap: () {
                // Acción al hacer clic en el elemento 2
                print('Elemento 2 clicado');
              },
            ),
            // Agrega más ListTile según sea necesario
          ],
        ),
      ),
    );
  }
}
