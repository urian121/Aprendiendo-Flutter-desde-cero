import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: const Text('Ejemplo Expanded'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          )),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 100,
            // width: 200,
            child: const Center(
              child: Text(
                'First widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text(
                  'Second widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            height: 100,
            // width: 200,
            child: const Center(
              child: Text(
                'Third widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
