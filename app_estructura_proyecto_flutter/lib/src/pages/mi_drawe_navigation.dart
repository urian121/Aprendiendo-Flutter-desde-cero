import 'package:flutter/material.dart';

class MiDrawerNavigation extends StatelessWidget {
  const MiDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi App con Drawer'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Encabezado',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Uno'),
              onTap: () {
                Navigator.pushNamed(context, '/one');
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Dos'),
              onTap: () {
                Navigator.pushNamed(context, '/two');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Tres'),
              onTap: () {
                Navigator.pushNamed(context, '/three');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Página principal'),
      ),
    );
  }
}
