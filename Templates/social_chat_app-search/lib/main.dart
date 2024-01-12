import 'package:flutter/material.dart';
import 'package:social_chat_app/body_view.dart';
//import 'package:social_chat_app/login.dart';
//import 'package:social_chat_app/sign_up.dart';
//import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.black,
          indicatorColor: const Color(0xCAF15800),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          labelTextStyle: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.selected)
                  ? const TextStyle(
                      color: Color(0xCAF15800),
                    )
                  : const TextStyle()),
        )),
        debugShowCheckedModeBanner: false,
        home: const BodyView());
  }
}
