import 'package:flutter/material.dart';
//https://googleflutter.com/flutter-alertdialog/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo AlertDialog ',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: const Color(0xff6750a4),
        ),
        body: const Center(
          child: DemoDialog(),
        ),
      ),
    );
  }
}

class DemoDialog extends StatelessWidget {
  const DemoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
      onPressed: () => showDialog<String>(
        context: context,
        //Obligrar a cerrar la ventana desde los botones de la modal
        barrierDismissible: false,

        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'AlertDialog',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
          content: const Text(
            '¿Te gustaría un cafe?',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                _respuestaTrue(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Mostar Modal Dialog'),
    );
  }
}

//Esta función se ejecuta cuando se presiona el botón, es necesario recibir el contexto de la ventana
void _respuestaTrue(BuildContext context) {
  print('Click en Ok');
  Navigator.pop(context, 'OK');
}

// Define la función que retorna un Widget
Widget saludar() {
  return Text('¡Hola! Bienvenido a Flutter');
  // Puedes construir y retornar cualquier widget según tus necesidades
}
