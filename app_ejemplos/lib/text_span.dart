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
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo TextSpan'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: RichText(
          text: TextSpan(
            text: 'This is textspan ',
            style: DefaultTextStyle.of(context)
                .style, // Puedes usar el estilo predeterminado
            children: const <InlineSpan>[
              TextSpan(
                text: 'Widget in Flutter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
