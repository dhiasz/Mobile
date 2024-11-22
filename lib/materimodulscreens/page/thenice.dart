import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Container(
            height: 355,
            width: 450,
            color: Colors.black,
          )
          
          ),
        ],
      ),
    );
  }
}
