import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dummyData = [
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/03/15/17/07/girl-1258727_640.jpg',
        'username': 'johndoe',
        'fullName': 'John Doe',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2017/09/26/17/34/ballet-2789416_640.jpg',
        'username': 'janedoe',
        'fullName': 'Jane Doe',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2019/05/28/05/06/female-4234344_640.jpg',
        'username': 'mikebrown',
        'fullName': 'Mike Brown',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/10/20/08/36/woman-1754895_640.jpg',
        'username': 'emilyjones',
        'fullName': 'Emily Jones',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2019/07/25/10/43/ballerina-4362282_640.jpg',
        'username': 'alexsmith',
        'fullName': 'Alex Smith',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/03/15/17/07/girl-1258727_640.jpg',
        'username': 'sarahwilliams',
        'fullName': 'Sarah Williams',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/07/08/23/17/girl-1505407_640.jpg',
        'username': 'davidlee',
        'fullName': 'David Lee',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2023/01/01/16/35/street-7690347_640.jpg',
        'username': 'laurajohnson',
        'fullName': 'Laura Johnson',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/10/20/08/36/woman-1754895_640.jpg',
        'username': 'emilyjones',
        'fullName': 'Emily Jones',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2019/07/25/10/43/ballerina-4362282_640.jpg',
        'username': 'alexsmith',
        'fullName': 'Alex Smith',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/03/15/17/07/girl-1258727_640.jpg',
        'username': 'sarahwilliams',
        'fullName': 'Sarah Williams',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/07/08/23/17/girl-1505407_640.jpg',
        'username': 'davidlee',
        'fullName': 'David Lee',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2023/01/01/16/35/street-7690347_640.jpg',
        'username': 'laurajohnson',
        'fullName': 'Laura Johnson',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/10/20/08/36/woman-1754895_640.jpg',
        'username': 'emilyjones',
        'fullName': 'Emily Jones',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2019/07/25/10/43/ballerina-4362282_640.jpg',
        'username': 'alexsmith',
        'fullName': 'Alex Smith',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/03/15/17/07/girl-1258727_640.jpg',
        'username': 'sarahwilliams',
        'fullName': 'Sarah Williams',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2016/07/08/23/17/girl-1505407_640.jpg',
        'username': 'davidlee',
        'fullName': 'David Lee',
      },
      {
        'profileImageUrl':
            'https://cdn.pixabay.com/photo/2023/01/01/16/35/street-7690347_640.jpg',
        'username': 'laurajohnson',
        'fullName': 'Laura Johnson',
      },
      // ... más elementos
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                final snackBar = SnackBar(
                  showCloseIcon: true,
                  content: Text('Clic en ${dummyData[index]['username']}'),
                  action: SnackBarAction(
                    label: 'demo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                // ScaffoldMessenger.of(context).showSnackBar(snackBar); se utiliza para mostrar el SnackBar en el contexto del widget actual
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // Acción a realizar al hacer clic en el elemento
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(dummyData[index]['profileImageUrl']),
                ),
                title: Text(dummyData[index]['username']),
                subtitle: Text(dummyData[index]['fullName']),
                trailing: const Icon(Icons.chevron_right),
              ),
            );
          },
        ),
      ),
    );
  }
}
