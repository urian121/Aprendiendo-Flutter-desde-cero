import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CircularProgressIndicator Example'),
        ),
        body: const Center(
          child: MyCircularProgressIndicator(),
        ),
      ),
    );
  }
}

class MyCircularProgressIndicator extends StatefulWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);
  @override
  _MyCircularProgressIndicatorState createState() =>
      _MyCircularProgressIndicatorState();
}

class _MyCircularProgressIndicatorState
    extends State<MyCircularProgressIndicator> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // Simula una tarea asíncrona, como la carga de datos desde una API
    simulateAsyncTask();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Realizando tarea...',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        if (isLoading)
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Simula la repetición de la tarea al hacer clic en el botón
            setState(() {
              isLoading = true;
            });
            simulateAsyncTask();
          },
          child: const Text('Repetir Tarea'),
        ),
      ],
    );
  }

  // Simula una tarea asíncrona que toma tiempo
  void simulateAsyncTask() async {
    // Simula la tarea asíncrona durante 3 segundos antes de detener el indicador de progreso
    await Future.delayed(const Duration(seconds: 3));

    // Detiene el indicador de progreso al completar la tarea
    setState(() {
      isLoading = false;
    });
  }
}
