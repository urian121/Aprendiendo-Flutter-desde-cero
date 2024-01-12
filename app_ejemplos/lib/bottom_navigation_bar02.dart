import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  // Lista de widgets que representan las páginas
  final List<Widget> pages = [
    const Center(
      child: Text('Página 1'),
    ),
    const Center(
      child: Text('Página 2'),
    ),
    const Center(
      child: Text('Página 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Básico'),
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        // Íconos para cada elemento de la barra de navegación
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        // Índice de la página actual
        currentIndex: currentPage,
        // Color del ícono seleccionado
        selectedItemColor: Colors.blue,
        // Función llamada cuando se toca un ícono
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
