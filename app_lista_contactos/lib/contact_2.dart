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
    // Puedes agregar más contactos según tus necesidades
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contactos'),
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
            child: Text(contacts[index].name[0]),
          ),
          title: Text(contacts[index].name),
          subtitle: Text(contacts[index].phoneNumber),
          onTap: () => _showDeleteDialog(context, index),
        );
      },
    );
  }

  Future<void> _showDeleteDialog(BuildContext context, int index) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Eliminar contacto'),
          content: const Text(
              '¿Estás seguro de que quieres eliminar este contacto?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Eliminar el contacto de la lista
                contacts.removeAt(index);
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: const Text('Sí'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}
