import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//Ejemplo de como usar  ListView.builder

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Colors.blueGrey,
          title: const Text('Lista de productos'),
        ),

        /*
        ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text('${items[index]}'));
          },
        );
        */
        // ListView.builder
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Producto ${index + 1}'),
                subtitle: Text('Este es el producto número ${index + 1}'),
              ),
            );
          },
        ),
      ),
    );
  }
}


/*
ListView.builder(
  // Informe a ListView cuántos elementos necesita crear.
  itemCount: items.length,
  // Proporcionar una función de construcción. Aquí es donde ocurre la magia.
  // Convierta cada elemento en un widget según el tipo de elemento que sea.
  itemBuilder: (context, index) {
    final item = items[index];

    return ListTile(
      title: item.buildTitle(context),
      subtitle: item.buildSubtitle(context),
    );
  },
)
*/