import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nombre = "Urian";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Mi Primer StatefullWidget',
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Text(nombre),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        //Importante la funcion OnPressed debe ir encima de todo, para que funcione
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        elevation: 10.0,
        highlightElevation: 20.0,
        shape: const StadiumBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void changeName() {
    setState(() {
      if (nombre == "Urian") {
        nombre = "Cristian";
      } else {
        nombre = "Urian";
      }
    });
  }
}
