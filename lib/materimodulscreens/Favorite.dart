import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/content.dart';
import 'package:wisata_mobile_5/models/destination_model.dart';
import 'package:wisata_mobile_5/widget/rekomendasi_destination.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter destinasi yang sudah diberi bookmark
    List<TravelDestination> favoriteDestinations = listDestination
        .where((destination) => destination.isBookmarked)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
         automaticallyImplyLeading: false,
      ),
        backgroundColor: Colors.white,
      body: favoriteDestinations.isEmpty
          ? const Center(
              child: Text(
                'No favorites yet!',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: favoriteDestinations.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Detail(destination: favoriteDestinations[index]),
                        ),
                      );
                    },
                    child: RekomendasiDestination(
                      destination: favoriteDestinations[index],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
