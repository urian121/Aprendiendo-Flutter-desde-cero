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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListView.builder de Imágenes',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red[600],
          centerTitle: true,
        ),
        body: ImageList(),
      ),
    );
  }
}

class ImageList extends StatelessWidget {
  ImageList({super.key});
  /*
  La función List.generate es una función en Dart que crea y devuelve una lista con elementos generados dinámicamente.
  List.generate(
    int length,
    T Function(int index) generator,
  )
  */
  final List<String> imageUrls = List.generate(
    20,
    (index) => 'https://source.unsplash.com/200x300/?animals=$index',
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: FadeInImage(
            placeholder: const AssetImage(
              'assets/images/loading.gif',
            ), // Puedes usar cualquier imagen como placeholder
            image: NetworkImage(imageUrls[index]),
            width: 200.0,
            height: 300.0,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
