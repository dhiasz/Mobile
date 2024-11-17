import 'package:flutter/material.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profil'),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifikasi'),
        ),
        ListTile(
          leading: Icon(Icons.security),
          title: Text('Keamanan'),
        ),
      ],
    );
  }
  
}