import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página uno'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Esta es la Página uno'),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página dos'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Image.network('https://picsum.photos/200/300'),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página tres'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Esta es la Página tres'),
      ),
    );
  }
}
