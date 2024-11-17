import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  
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