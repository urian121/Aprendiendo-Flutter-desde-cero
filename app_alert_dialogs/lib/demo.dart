import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de Funciones en Flutter'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Llama a la función cuando se presiona el botón
              miFuncion();
            },
            child: const Text('Presionar'),
          ),
        ),
      ),
    );
  }

  // Definir la función que quieres llamar
  void miFuncion() {
    print('La función fue llamada');
    // Puedes agregar más lógica o código aquí
  }
}
