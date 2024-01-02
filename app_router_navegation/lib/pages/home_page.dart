import 'package:app_router_navegation/pages/segunda_page.dart';
import 'package:flutter/material.dart';

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
        centerTitle: true,
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
