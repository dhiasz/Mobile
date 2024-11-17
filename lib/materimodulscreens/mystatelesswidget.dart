import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini stateless widges",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('ini app bar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/barbie.jpg', width: 250, height: 250,),
            const Text(
            'tampilan body',
              style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 35, 94),
              letterSpacing: 2.0,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 0, 0, 0)
            ),),] 
          ),
      ),
    );

  }
}