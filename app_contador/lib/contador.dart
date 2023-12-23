import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Contador',
      debugShowCheckedModeBanner: false,

      //Home es el primer widget que se muestra
      home: Scaffold(
        //AppBar es el encabezado
        appBar: AppBar(
          title: const Text(
            'Contador con Flutter',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 15, 165, 240),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.black,
        ),

        //Body es el contenido
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w300)),

              Text('Click${clickCounter == 0 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25)),

              if (clickCounter == 10)
                const Text(
                  '¡Has alcanzado 10 clicks!',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),

              // if( clickCounter != 1 )
              //   const Text('Clicks', style: TextStyle(fontSize: 25)),

              const SizedBox(height: 50),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            setState(() {});
          },
          backgroundColor:
              const Color.fromARGB(255, 8, 120, 212), // Cambia el color aquí
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
