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
        title: const Text('Material App'),
        backgroundColor: Colors.deepOrange,
      ),
      body: const Center(
          child: Text(
        'Segunda Page',
        style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
