import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoadingImage(),
    );
  }
}

class LoadingImage extends StatelessWidget {
  const LoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text(
          ' App Bar',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        //child: Image.network('https://i.pravatar.cc/500'),
        //child: Image.asset('assets/images/loading.gif'),
        child: FadeInImage.assetNetwork(
          placeholder:
              'assets/images/loading.gif', // Ruta de la imagen de carga
          image: 'https://i.pravatar.cc/500', // Ruta de la imagen final
          fit: BoxFit.cover,
          width: 380.0,
          height: 300.0,
        ),
      ),
    );
  }
}
