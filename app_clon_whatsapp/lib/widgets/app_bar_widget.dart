import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Whatsapp',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 39, 49, 58),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
      elevation: 20.0,
    );
  }
}
