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
      title: 'Material App',
      home: DefaultTabController(
        length: 3, // Número de pestañas
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade600,
            title: const Text('Ejemplo TabBar en AppBar'),
            centerTitle: true,
            bottom: const TabBar(
              labelColor: Colors.blue, // Color de la pestaña seleccionada
              unselectedLabelColor:
                  Colors.white, // Color de las pestañas no seleccionadas

              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Pestaña 1'),
                Tab(text: 'Pestaña 2'),
                Tab(text: 'Pestaña 3'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Contenido de Pestaña 1')),
              Center(child: Text('Contenido de Pestaña 2')),
              Center(child: Text('Contenido de Pestaña 3')),
            ],
          ),
        ),
      ),
    );
  }
}


/*
el widget DefaultTabController envuelve la aplicación para proporcionar el controlador de pestañas por defecto.
El número de pestañas está configurado con la propiedad length del DefaultTabController. 
El TabBar se encuentra en la propiedad bottom del AppBar y contiene las pestañas deseadas.
El TabBarView se utiliza para definir el contenido asociado con cada pestaña.
*/