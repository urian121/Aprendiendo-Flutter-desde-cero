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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade500,
        ),
        //SingleChildScrollView para permitir que el usuario haga scroll si es necesario
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Primer contenedor con imagen de fondo
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2023/12/16/17/26/ai-generated-8452862_960_720.jpg'), // Reemplaza con la ruta de tu imagen
                    fit: BoxFit.cover,
                  ),
                ),

                //Ocupando la mita de la altura disponible, para calcularla usamos una multiplicación
                height: MediaQuery.of(context).size.height * 0.75,
              ),
              // Segundo contenedor con texto en el centro
              Container(
                color: Colors.blueGrey.shade900,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: const Text(
                  'Hola, soy Anna, Vivo en Canada y me encanta la Nieve',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
