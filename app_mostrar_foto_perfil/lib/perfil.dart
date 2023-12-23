import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    const urlImagen =
        "https://yt3.googleusercontent.com/k-RaJvjPK4vcbz7ykz4c3-ub5298-iAkSkAq2HeezJKRoPpBesz7g1KEtSjebUtDasUJo5C9fg=s900-c-k-c0x00ffffff-no-rj";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Primera App 😄'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        elevation: 10.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: "Menu principal",
          onPressed: () => {print("Haciendo clic..")},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  100.0), // Ajusta el valor según sea necesario
              child: Image.network(
                urlImagen,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 10), // Espaciado entre la imagen y el texto
            const Text(
              'Hola, soy Urian Viera',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple), //: ,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acciones a realizar cuando se presiona el botón flotante
          print("Botón flotante presionado");
        },
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Ubica el botón en la esquina inferior derecha
    );
  }
}
