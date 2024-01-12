import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView sin Scroll Vertical'),
          centerTitle: true,
        ),
        body: GridView.builder(
          /**
           * Se utilizó physics: NeverScrollableScrollPhysics() para deshabilitar el desplazamiento vertical del GridView
           */
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.yellow,
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
