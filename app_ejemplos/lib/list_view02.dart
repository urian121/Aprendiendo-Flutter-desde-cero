import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ColumnLayoutScreen(),
    );
  }
}

class ColumnLayoutScreen extends StatelessWidget {
  const ColumnLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
          appBar: AppBar(
            // The title text which will be shown on the action bar
            title: const Text("Ejemplo de ListView"),
            centerTitle: true,
          ),
          body: Center(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.amber,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.amber,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                )
              ],
            ),
          )),
    );
  }
}


/**
 * ListView es otro widget en Flutter que también se utiliza para manejar listas de elementos. A diferencia de SingleChildScrollView,
 *  ListView está específicamente diseñado para la presentación de listas, y proporciona funcionalidades adicionales orientadas a la 
 * eficiencia y al manejo de grandes conjuntos de datos.
 */