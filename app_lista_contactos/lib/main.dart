import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Contact {
  String name;
  String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mis Contactos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(
            child: Text(
              'Lista de Contactos',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          centerTitle: true,
          elevation: 10.0,
          shadowColor: Colors.blueAccent,
          actions: const <Widget>[
            Icon(
              Icons.person_2_sharp, //ç
              color: Colors.white,
            ) //icon: Icons.add),
          ],
        ),
        body: const ContactList(),
      ),
    );
  }
}

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contacts = [
    Contact(name: "Juan", phoneNumber: "123-456-7890"),
    Contact(name: "Brenda", phoneNumber: "555-444-3333"),
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
  ];

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
                setState(() {
                  contacts.removeAt(index);
                });
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
