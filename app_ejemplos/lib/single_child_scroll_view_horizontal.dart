import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
          title: const Text('SingleChildScrollView Horizontal'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 150,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 100,
                width: 150,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 100,
                width: 150,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 100,
                width: 150,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
