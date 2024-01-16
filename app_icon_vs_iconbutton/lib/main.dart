import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData.dark(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Colors.green.shade600,
        ),
        body: Center(
          child: Column(
            children: [
              const Icon(
                Icons.android,
                size: 300,
                color: Colors.green,
              ),
              const Text('Hola mundo'),
              IconButton(
                onPressed: () {
                  print('Hola mundo');
                },
                icon: const Icon(Icons.add_circle_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Demo https://www.youtube.com/watch?v=S8THqCbHDig&list=RDCMUCs87sSRsCqs9CYlgRUlPcww&index=27
//Nota: con el widget Icon recibe una instancias de Icon  Data 

//El widget IconButton recibe una instacia de IconButton y soporta un click, ejemplo:
// Este permite crear un boton y debe ser como hijo un icono
//IconButton(
//  onPressed: () {},
//  icon: Icon(Icons.android),
//)
