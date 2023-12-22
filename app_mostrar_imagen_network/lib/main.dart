import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Imagen'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 78, 170, 252),
        ),
        body: Center(
          child: Image.network(
            "https://c.tenor.com/XfrqyR_-jzIAAAAC/tenor.gif",
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
