import 'package:flutter/material.dart';
import 'list_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message Chat',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message Chat'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ChatModel.messagesList.length,
        itemBuilder: (context, index) {
          ChatModel chatEntry = ChatModel.messagesList[index];
          return Column(
            children: <Widget>[
              const Divider(
                height: 12.0,
              ),
              ListTile(
                key: Key(chatEntry.name),
                leading: CircleAvatar(
                  radius: 24.0,
                  backgroundImage: NetworkImage(chatEntry.avatarUrl),
                ),
                title: Row(
                  children: <Widget>[
                    Text(chatEntry.name),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      chatEntry.datetime,
                      style: const TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                subtitle: Text(chatEntry.message),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
