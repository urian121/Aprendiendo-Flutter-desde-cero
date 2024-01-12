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
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: const Text("Ejemplo SingleChildScrollView"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ));
  }
}


/**
 * Nota: el widget SingleChildScrollView se puede reemplazar por ListView
 * 
 * En Flutter, SingleChildScrollView es un widget que proporciona una manera de hacer que su contenido sea desplazable cuando no cabe completamente en la pantalla.
 * Este widget es útil cuando tiene contenido que podría ocupar más espacio del disponible en la pantalla y necesita permitir que los usuarios se desplacen
 * hacia arriba o hacia abajo para ver todo el contenido.
 */