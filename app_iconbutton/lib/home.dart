import 'package:flutter/material.dart';

class HolaMundoHome extends StatelessWidget {
  const HolaMundoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: "Menu principal",
            onPressed: () => {print("Haciendo clic..")},
          ),
          title: const Text('Titulo principal'),
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Colors.lightBlueAccent,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search),
                tooltip: "Buscar",
                onPressed: () => {print('buscando..')})
          ],
        ),
        body: const Center(
          child: Text('¡Hola mundo!'),
        ));
  }
}
