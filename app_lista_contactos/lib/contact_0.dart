import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Contact {
  String name;
  String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Contact> contacts = [
    Contact(name: "Juan", phoneNumber: "123-456-7890"),
    Contact(name: "María", phoneNumber: "987-654-3210"),
    Contact(name: "Carlos", phoneNumber: "555-1234-5678"),
    Contact(name: "Laura", phoneNumber: "111-222-3333"),
    Contact(name: "Roberto", phoneNumber: "999-888-7777"),
    Contact(name: "Ana", phoneNumber: "555-444-3333"),
    Contact(name: "Pedro", phoneNumber: "123-987-6543"),
    Contact(name: "Isabel", phoneNumber: "333-444-5555"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 240, 248),
        appBar: AppBar(
          title: const Text(
            'Lista de Contactos',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          elevation: 5.0,
        ),
        body: ContactList(contacts: contacts),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts;

  const ContactList({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(contacts[index].name),
          subtitle: Text(contacts[index].phoneNumber),
          // Puedes agregar más widgets para acciones específicas al tocar un contacto
        );
      },
    );
  }
}
