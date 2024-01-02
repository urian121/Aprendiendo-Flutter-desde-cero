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
    Contact(name: "Santiago", phoneNumber: "777-888-9999"),
    Contact(name: "Carmen", phoneNumber: "666-555-4444"),
    Contact(name: "Luis", phoneNumber: "123-987-6543"),
    Contact(name: "Elena", phoneNumber: "555-444-3333"),
    Contact(name: "Diego", phoneNumber: "777-888-9999"),
    Contact(name: "Raquel", phoneNumber: "666-555-4444"),
    Contact(name: "Javier", phoneNumber: "123-987-6543"),
    Contact(name: "Patricia", phoneNumber: "555-444-3333"),
    Contact(name: "Alberto", phoneNumber: "777-888-9999"),
    Contact(name: "Sofía", phoneNumber: "666-555-4444"),
    Contact(name: "Miguel", phoneNumber: "123-987-6543"),
    Contact(name: "Beatriz", phoneNumber: "555-444-3333"),
    // Puedes agregar más contactos según tus necesidades
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contactos',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contactos'),
          centerTitle: true,
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
          leading: CircleAvatar(
            child: Text(contacts[index]
                .name[0]), // Muestra la primera letra del nombre como avatar
          ),
          title: Text(contacts[index].name),
          subtitle: Text(contacts[index].phoneNumber),
          // Puedes agregar más widgets para acciones específicas al tocar un contacto
        );
      },
    );
  }
}
