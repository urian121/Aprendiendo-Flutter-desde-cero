import 'package:flutter/material.dart';

class SegundaPage extends StatefulWidget {
  const SegundaPage({super.key});

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
          child: Text(
        'Segunda Page',
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }
}
