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
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la pantalla de detalles utilizando la ruta con nombre
            Navigator.pushNamed(context, '/details');
          },
          child: const Text('Ir a Detalles'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Volver a la pantalla anterior
            Navigator.pop(context);
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}
