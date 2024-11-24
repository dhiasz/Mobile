import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/content_model.dart';

class ContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Filter untuk menemukan item dengan nama 'Kebun Raya Cibodas'
    Content? selectedContent = content.firstWhere(
      (item) => item.name == 'Kebun Raya Cibodas',
        orElse: () => null,// Berikan nilai default jika tidak ditemukan
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Content Detail'),
      ),
      body: selectedContent == null
          ? Center(
              child: Text(
                'Content not found',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  selectedContent.image,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Text(
                  selectedContent.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
    );
  }
}