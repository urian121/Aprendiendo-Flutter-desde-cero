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
          title: const Text('GridView con Scroll Vertical'),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue,
              child: Center(
                child: Text('Item $index',
                    style: const TextStyle(color: Colors.white)),
              ),
            );
          },
        ),
      ),
    );
  }
}
