import 'package:flutter/material.dart';

class HolaMundo extends StatelessWidget {
  const HolaMundo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'App Bar',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          elevation: 10,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: "Menu principal",
            // ignore: avoid_print
            onPressed: () => {print("Haciendo clic..")},
          )),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Urian Viera',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text('Developer'),
          ],
        ),
      ),
    );
  }
}
