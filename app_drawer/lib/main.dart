import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home', style: optionStyle),
    Text('Peoples', style: optionStyle),
    Text('School', style: optionStyle),
    Text('Admin', style: optionStyle)
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home Page'),
          backgroundColor: Colors.blue[600],
          elevation: 15,
          shadowColor: Colors.orangeAccent,
          actionsIconTheme: const IconThemeData(color: Colors.white, size: 30),
          actions: const [
            Icon(Icons.more_vert),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Peoples',
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined),
                label: 'School',
                backgroundColor: Colors.orangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings),
                label: 'Admin',
                backgroundColor: Colors.blue),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amberAccent,
          onTap: _onItemTap,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[400],
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: const Text('Material App Bar'),
                ),
                body: const Center(
                  child: Text('Hello World'),
                ),
              ),
            ),
          ),
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Elon Musk"),
                accountEmail: Text("Elon_Musk@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.urbantecno.com/urbantecno/s/2023-01-05-11-27-elon-musk.png'),
                ),
              ),
              ListTile(
                title: const Text("Inbox"),
                leading: const Icon(Icons.mail),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: const Text('Material App Bar'),
                        ),
                        body: const Center(
                          child: Text('Hello World'),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Divider(
                height: 0.1,
              ),
              const ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.inbox),
              ),
              const Divider(
                height: 0.1,
              ),
              const ListTile(
                title: Text("Social"),
                leading: Icon(Icons.people),
              ),
              const Divider(
                height: 0.1,
              ),
              const ListTile(
                title: Text("Promotions"),
                leading: Icon(Icons.local_offer),
              )
            ],
          ),
        ),
      ),
    );
  }
}
