import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/content.dart';
import 'package:wisata_mobile_5/models/destination_model.dart';
import 'package:wisata_mobile_5/widget/rekomendasi_destination.dart';

class Near extends StatefulWidget {
  const Near({super.key});

  @override
  State<Near> createState() => _NearState();
}

class _NearState extends State<Near> {
   // List kategori populer dan rekomendasi
  List<TravelDestination> popular = listDestination
      .where((element) => element.category == 'popular')
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  // Kontrol pencarian dan hasil pencarian
  TextEditingController searchController = TextEditingController();
  List<TravelDestination> filteredDestinations = [];

  @override
  void initState() {
    super.initState();
    // Tampilkan semua data saat pertama kali dibuka
    filteredDestinations = [...popular, ...rekomendasi];
  }

  // Fungsi pencarian berdasarkan nama destinasi
  void _searchDestination(String query) {
    setState(() {
      if (query.isEmpty) {
        // Tampilkan semua data jika input kosong
        filteredDestinations = [...popular, ...rekomendasi];
      } else {
        // Filter data berdasarkan input teks
        filteredDestinations = [...popular, ...rekomendasi]
            .where((destination) => destination.name
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
                // automaticallyImplyLeading: false, // Hilangkan panah kembali
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Teks header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 15.0),
                    Text(
                      'Hi, Kevin 👋',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Eksplor The World',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // Avatar profil
                const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets//images/barbie.jpg')
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Tutup keyboard saat area lain diketuk
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search places',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchController.clear();
                        _searchDestination(''); // Reset pencarian
                      },
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                  ),
                  onChanged: _searchDestination, // Filter saat input berubah
                ),
                const SizedBox(height: 30.0),
                if (searchController.text.isEmpty) ...[
                  const SizedBox(height: 30.0),
                  const Text(
                    'Near By',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: List.generate(
                      rekomendasi.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Detail(destination: rekomendasi[index]),
                              ),
                            );
                          },
                          child: RekomendasiDestination(
                            destination: rekomendasi[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  // Tampilan hasil pencarian
                  const Text(
                    'Results',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: List.generate(
                      filteredDestinations.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Detail(destination: filteredDestinations[index]),
                              ),
                            );
                          },
                          child: RekomendasiDestination(
                            destination: filteredDestinations[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
