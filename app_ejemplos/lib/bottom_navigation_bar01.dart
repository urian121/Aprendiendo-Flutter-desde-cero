import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  // Lista de páginas para mostrar en el cuerpo de la aplicación
  final List<Widget> pages = [
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Página 1'),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text('Página 2'),
      ),
    ),
    Container(
      color: Colors.orange,
      child: const Center(
        child: Text('Página 3'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Example'),
        centerTitle: true,
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        currentIndex: currentPage,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
