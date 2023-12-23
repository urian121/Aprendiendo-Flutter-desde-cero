import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String urlImg =
      'https://p4.wallpaperbetter.com/wallpaper/311/594/513/nagatsuki-midori-cleavage-japanese-women-model-brunette-hd-wallpaper-preview.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fondo de pantalla',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Chica de Fondo de Pantalla 😘',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Colors.brown,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(urlImg),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: Text('😘'),
          ),
        ),
      ),
    );
  }
}
