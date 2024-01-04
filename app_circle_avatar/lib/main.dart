import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget CircleAvatar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget CircleAvatar'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40,
                child: Text('UV'),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/200/200/300'),
                ),
              ),
              CircleAvatar(
                radius: 50, //radius is 50
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/10/03/23/25/child-1713177_960_720.jpg'), //image url
              ),
              CircleAvatar(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20,
                ),
                backgroundColor: Colors.blue,
              ),

              /*CircleAvatar(
                backgroundColor: Color.fromARGB(255, 90, 134, 102),
                radius: 110,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/10/03/23/25/child-1713177_960_720.jpg"), //NetworkImage
                  radius: 100,
                ),
              ),*/
              /* CircleAvatar(
                backgroundImage: AssetImage('assets/images/cat3.png'),
                backgroundColor: Colors.greenAccent,
                radius: 120,
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
