import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //const String persona = 'Urian V';
    return MaterialApp(
      title: 'Mi App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App Bar',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          elevation: 10,
        ),
        body: const Center(
            child: Column(
          children: <Widget>[
            Text(
              'Urian Viera',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text('Developer'),
          ],
        )),
      ),
    );
  }
}
