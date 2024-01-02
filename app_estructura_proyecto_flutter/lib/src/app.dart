import 'package:app_estructura_proyecto_flutter/src/pages/mi_drawe_navigation.dart';
import 'package:app_estructura_proyecto_flutter/src/pages/pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Material App',
      // home: const PageOne(),
      home: const MiDrawerNavigation(),
      routes: {
        '/one': (context) => const PageOne(),
        '/two': (context) => const PageTwo(),
        '/three': (context) => const PageThree(),
      },
    );
  }
}
