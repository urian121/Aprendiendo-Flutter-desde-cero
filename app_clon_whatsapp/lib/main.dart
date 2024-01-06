import 'package:app_clon_whatsapp/widgets/app_bar_widget.dart';
import 'package:app_clon_whatsapp/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/list_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  // Lista de widgets que representan las páginas
  final List<Widget> pages = [
    ListView.builder(
      itemCount: ChatModel.messagesList.length,
      itemBuilder: (context, index) {
        ChatModel chatEntry = ChatModel.messagesList[index];
        //Chat item
        return ChatItemWidget(chatEntry: chatEntry);
      },
    ),
    const Center(
      child: Text('Página 2, Novedades'),
    ),
    const Center(
      child: Text('Página 3, Comunidades'),
    ),
    const Center(
      child: Text('Página 4, Llamadas'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: pages[currentPage], // Cambio clave aquí
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('click');
          },
          backgroundColor: const Color.fromARGB(255, 4, 177, 67),
          elevation: 20.0,
          child: const Icon(Icons.message_rounded, color: Colors.black),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active_outlined,
              ),
              label: 'Novedades',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.groups_rounded,
              ),
              label: 'Comunidades',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: 'Llamadas',
            )
          ],
          backgroundColor: const Color.fromARGB(255, 39, 49, 58),
          type: BottomNavigationBarType.fixed,
          elevation: 20.0,
          currentIndex: currentPage,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
        ));
  }
}
