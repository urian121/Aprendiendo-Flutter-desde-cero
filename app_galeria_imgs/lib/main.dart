import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // Elimina la flanja de Debug en la App
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: 300.0,
            height: 500.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://foroprompt.com/wp-content/uploads/2023/09/AbsoluteRealityv16mujernegralabiosrojospelonegroazaba0.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
