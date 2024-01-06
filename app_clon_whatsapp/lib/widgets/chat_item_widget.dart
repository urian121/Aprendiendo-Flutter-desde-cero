import 'package:app_clon_whatsapp/widgets/list_chat.dart';
import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  final ChatModel chatEntry;

  const ChatItemWidget({super.key, required this.chatEntry});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Manejar el evento onPressed para cada elemento
        print('Elemento presionado: ${chatEntry.name}');
        // Puedes agregar código para cambiar el fondo aquí si es necesario
      },
      child: Ink(
        color: const Color.fromARGB(255, 47, 60, 70),
        child: ListTile(
          key: Key(chatEntry.name),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          leading: CircleAvatar(
            radius: 24.0,
            backgroundImage: NetworkImage(chatEntry.avatarUrl),
          ),
          title: Row(
            children: <Widget>[
              Text(
                chatEntry.name,
                style: const TextStyle(
                  color: Color.fromARGB(179, 255, 255, 255),
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(width: 16.0),
              Text(
                chatEntry.datetime,
                style: const TextStyle(
                  color: Color.fromARGB(255, 183, 182, 182),
                ),
              ),
            ],
          ),
          subtitle: Text(
            chatEntry.message,
            style: const TextStyle(
              color: Color.fromARGB(179, 208, 208, 208),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromARGB(255, 183, 182, 182),
            size: 14.0,
          ),
        ),
      ),
    );
  }
}
