import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar con imagen'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[700],
          //leading: const Icon(Icons.menu),
          leading:
              Image.asset('assets/images/logo.png', width: 200, height: 200),

          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Acciones cuando se presiona el ícono
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                // Utiliza la clase AssetImage para cargar la imagen desde assets
                child: Image.asset('assets/images/logo.png'),
              ),
              //Espacio en blanco
              const SizedBox(height: 20),
              const Text(
                'Tu domicilio en Camino...',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Ando volando',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
