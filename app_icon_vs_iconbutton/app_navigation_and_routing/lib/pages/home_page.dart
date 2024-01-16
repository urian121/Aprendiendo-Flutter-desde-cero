import 'package:flutter/material.dart';

import 'segunda_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              MaterialPageRoute router = MaterialPageRoute(
                builder: (context) => const SegundaPage(),
              );
              Navigator.of(context).push(router);
            },
            child: const Text('Segunda Page')),
      ),
    );
  }
}
