import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange[500],
          title: const Text('CircularProgressIndicator in Flutter'),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          elevation: 10,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const CircularProgressIndicator(
                color: Colors.orange,
                strokeWidth: 8,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100.0,
                child: Container(
                  width: double
                      .infinity, // Si deseas que el contenedor ocupe todo el ancho disponible
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Contenido del Widget'),
                  ),
                ),
              ),

              const SizedBox(
                width: 200.0,
                height: 100.0,
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Holaaaa',
                      style: TextStyle(color: Colors.white),
                    ), //Text
                  ), //Center
                ), //Card
              ), //SizedBox
            ],
          ),
        ),
      ),
    );
  }
}
