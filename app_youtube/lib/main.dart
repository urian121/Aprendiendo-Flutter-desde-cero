import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter YouTube Home',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter YouTube Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> _elements = [
    {
      'title': 'juan 0',
      'icon': Icons.home,
      'image': 'https://i.imgur.com/0ZD8pGd.jpg',
      'channel': 'Channel Name',
      'views': '123,456 views',
    },
    {
      'title': 'Breanda 1',
      'icon': Icons.home,
      'image': 'https://i.imgur.com/0ZD8pGd.jpg',
      'channel': 'Channel Name',
      'views': '123,456 views',
    },
    {
      'title': 'Anna 2',
      'icon': Icons.home,
      'image': 'https://i.imgur.com/0ZD8pGd.jpg',
      'channel': 'Channel Name',
      'views': '123,456 views',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _elements.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Text(_elements[index]['title'][0]),
            ),
            title: Text(_elements[index]['title']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_elements[index]['channel']),
                Text(_elements[index]['views']),
              ],
            ),
            trailing: Icon(
              _elements[index]['icon'],
            ),
          );
        },
      ),
    );
  }
}
