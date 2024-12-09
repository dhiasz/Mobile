import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/page/cibodas.dart';
import 'package:wisata_mobile_5/materimodulscreens/storage/bookmark_storage.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';
import 'package:wisata_mobile_5/models/destination_model.dart';

class Detail extends StatefulWidget {
  final TravelDestination destination;
  Detail({super.key, required this.destination,});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

   bool isBookmarked = false;

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
      if (isBookmarked) {
        BookmarkStorage.addBookmark(widget.destination.name,widget.destination.image![0]);
      } else {
        BookmarkStorage.removeBookmark(widget.destination.name);
        BookmarkStorage.removeBookmark(widget.destination.image![0]);
      }
    });
  }

  PageController pageController = PageController();
  int pageView = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
       automaticallyImplyLeading: false, 
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
  child: Container(
    height: 450,
    width: 335,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),  // Border radius pada container
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: const Offset(0, 6),
          blurRadius: 4,
          spreadRadius: 4,
        )
      ],
    ),
    child: Stack( // Stack memastikan elemen berada di atas gambar
      children: [

        PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              pageView = value;
            });
          },
          children: List.generate(
            widget.destination.image!.length,
            (index) => ClipRRect( // Membungkus gambar dengan ClipRRect untuk border radius
              borderRadius: BorderRadius.circular(15.0), // Border radius pada gambar
              child: Image.asset(
                widget.destination.image![index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Semua elemen UI berada di atas gambar
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            GestureDetector(
              child: Container(

                margin: const EdgeInsets.only(right: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      widget.destination.image!.length - 1 != pageView
                          ? widget.destination.image![pageView + 1]
                          : widget.destination.image![0],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0), // Border radius pada teks
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                height: 75,
                width: 224,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama wisata
                    Text(
                      widget.destination.name,
                      style: const TextStyle(
                        height: 2,
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Color.fromARGB(255, 224, 223, 223),
                          size: 20.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          widget.destination.location,
                          style: const TextStyle(
                            height: 1.5,
                            color: Color.fromARGB(255, 224, 223, 223),
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Tombol Kembali
        Positioned(
          top: 10,
          left: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage(username: 'Kevin')),
              );
            },
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.black.withOpacity(0.3),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // Bookmark
        Positioned(
          top: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black.withOpacity(0),
            child: IconButton(
              icon: Icon(
                isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                size: 40,
                color: isBookmarked ? Colors.blue : Colors.grey,
              ),
              onPressed: toggleBookmark,
            ),
          ),
        ),
      ],
    ),
  ),
),

            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),

              //TULISAN DESKIPSI

              child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //overview
                  const Row(
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                          color: Color.fromARGB(255, 116, 115, 115),
                        ),
                      )
                    ],
                  ),

                  // DESKRIPSI WISATA

                  const SizedBox(height: 30.0),
                  Text(
                    widget.destination.description,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  const SizedBox(height: 30.0),
                  const Text(
                    'Fasilitas',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //FASILITAS WISATA
                  Text(
                    widget.destination.fasility,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  const SizedBox(height: 30.0),
                  const Text(
                    'WAHANA',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //WAHANA WISATA
                  Text(
                    widget.destination.wahana,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  const SizedBox(height: 30.0),
                  const Text(
                    'Jam Operasional & Tiket',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //BIAYA TIKET TARIF WISATA JAM OPERASIONAL
                  Text(
                   widget.destination.jam_dan_tiket,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Keindahan${widget.destination.name}',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10.0),
                ],
              ),
            ),
            Padding(
  padding: const EdgeInsets.all(10.0),
  child: SizedBox(
    height: 600, // Adjust height as needed
    child: GridView.builder(
      itemCount: widget.destination.image!.length, // Menyesuaikan dengan jumlah gambar yang ada di destinasi
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom grid
        crossAxisSpacing: 10.0, // Spacing antar kolom
        mainAxisSpacing: 10.0, // Spacing antar baris
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Menambahkan border radius
            image: DecorationImage(
              image: AssetImage(widget.destination.image![index]), // Mengambil gambar berdasarkan index
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  ),
),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}