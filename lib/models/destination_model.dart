import 'dart:math';

import 'package:flutter/material.dart';

Random random = Random();

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location, fasility, wahana, jam_dan_tiket;
  final double rate;

  TravelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
    required this.fasility,
    required this.wahana,
    required this.jam_dan_tiket,
  });
}

List<TravelDestination> listDestination = [
  // Popular destinations
  TravelDestination(
    id: 1,
    name: "The Nice Park Funtasy",
    category: 'popular',
    image: [
      'assets/images/Thenicepark.jpg',
      'assets/images/Thenicepark(2).jpg',
      'assets/images/Thenicepark(3).jpg',
    ],
    location: 'Cianjur, Mariwati-Sukaresmi',
    review: random.nextInt(250) + 20,
    price: 30000,
    description:
        'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
    rate: 4.8,
    fasility: "1. Tempat parkir luas\n"
        "2. Toilet\n"
        "3. Masjid\n"
        "4. Aula\n"
        "5. Tempat istirahat\n"
        "6. Tempat sampah\n"
        "7. Pusat informasi\n"
        "8. Restoran, food court, dan snack corner\n"
        "9. P3K\n"
        "10. Keamanan\n"
        "11. Spot foto yang unik dan instagramable\n"
        "12. E-bike\n"
        "13. Merchandise Store",
    wahana: "1. Mini Zoo\n"
        "2. Sky Bridge (jembatan gantung)\n"
        "3. Flying Fox\n"
        "4. ATV\n"
        "5. Sepeda air dan perahu bebek\n"
        "6. Kolam renang dan kolam pancing\n"
        "7. Playground\n"
        "8. Rainbow Slide\n"
        "9. Hanging Steps\n"
        "10. Giant Swing\n"
        "11. Kebun sayur organik\n"
        "12. Aneka rumah flora dan fauna (rumah jamur, rumah kupu-kupu, rumah lebah, rumah burung, dan rumah tanaman)",
    jam_dan_tiket: "Jam Operasioanl : Senin - Jumat, 09:00 - 17:00\n"
"                       : Sabtu - Minggu, 08.00-17.45\n"
"Harga               : Weekday Rp30.000 & Weekend Rp35.000"),

  TravelDestination(
      id: 2,
      name: "Kebun Raya Cibodas",
      category: 'popular',
      image: [
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
      ],
      location: 'Cipanas, Cibodas, Indonesia',
      review: random.nextInt(250) + 20,
      price: 15000,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.9,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 3,
      name: "Taman Bunga",
      category: 'popular',
      image: [
        'assets/images/Tamanbunga(2).jpg',
        'assets/images/Tamanbunga.jpg',
        'assets/images/Tamanbunga(3).jpg',
        'assets/images/Tamanbunga(4).jpg',
      ],
      location: 'Cianjur, Mariwati-Sukaresmi',
      review: random.nextInt(250) + 20,
      price: 50000,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.8,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 4,
      name: "Tanah Lot",
      category: 'popular',
      image: [
        "https://images.unsplash.com/photo-1555865138-193ba536d7e0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1698799619978-872b701b44a8?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1566811851038-0580f1fb9082?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1664551577638-9a212d646b9b?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 100,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.7,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),

  // Recommended destinations
  TravelDestination(
      id: 5,
      name: "Kebun Raya Cibodas",
      category: 'rekomendasi',
      image: [
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
        'assets/images/KebunRayaCibodas(2).jpg',
        'assets/images/KebunRayaCibodas(1).jpg',
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.9,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 6,
      name: "Danau Toba",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1440558929809-1412944a6225?q=80&w=1929&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1623598122059-9b5ef17619c8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1724909627713-866347d7d00e?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1617414372548-1ce628263337?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Sumatera Utara, Indonesia',
      review: random.nextInt(250) + 20,
      price: 120,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.5,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 7,
      name: "Pink Beach",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1643044034131-001b53336bd0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1658642017201-45bb87756f1b?q=80&w=1962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1571755931207-3ede68df575a?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1504964030113-79ab61954f0e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.7,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 8,
      name: "Nusa Penida",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1604430289272-0851a606105d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1711786120068-63c4306d8d0d?q=80&w=1916&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1672128557444-da9340a253f0?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 200,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.7,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 9,
      name: "Candi Borobudur",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1596402184320-417e7178b2cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1512631911403-3e3a06d12389?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1620549146396-9024d914cd99?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1631340729644-8b8aad1e9dba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Jawa Tengah, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          'The Nice Funtastic Park memiliki banyak sekali wahana rekreasi mulai dariplayground untuk anak-anak hingga wahana petualangan yang seru. Yang palingdiminati ialah Mini Zoo yang menampung berbagai jenis satwa unik dari beberapanegara. Obyek wisata ini juga dilengkapi dengan berbagai spot foto Instagramable dengan latar belakang perbukitan hijau, area parkir luas, restoran, mushola, toilet, penyewaan e-bike, dan tempat duduk untuk bersantai wisatawan.',
      rate: 4.8,
      fasility: "BERIKAN FASILITAS",
      wahana: "BERIKAN wahana",
      jam_dan_tiket:"BERIKAN JAM DAN HARGA TIKET SEPERTI DI THE NICE"),
  TravelDestination(
      id: 11,
      name: "Curug Citambur",
      category: 'rekomendasi',
      image: [
        'assets/images/citambur.jpg',
        'assets/images/citambur2.jpg',
        'assets/images/citambur3.jpg',
        'assets/images/citambur4.jpg',
      ],
      location: 'Desa Karangjaya, Kecamatan Pasirkuda, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          'Curug Citambur adalah sebuah curug atau air terjun yang ketinggiannya kira-kira 130 meter di Kabupaten Cianjur bagian Selatan, Provinsi Jawa Barat, Indonesia. Curug Citambur memiliki tiga tingkatan air terjun dimana tingkat pertama berketinggian 12 meter sedangkan tingkat kedua berketinggian 116 meter dan yang paling tas adalah 2 meter',
      rate: 4.8,
      fasility: "Warung, Toilet, Camping ground, Area parkir yang luas, Musholla, View pegunungan.",
      wahana: "curug",
      jam_dan_tiket:"Jam Operasioanl : Senin - Minggu, 07.30 - 16.30 WIB\n"
                    "Harga tiket masuk Curug Citambur: Rp10.000/orang\n"
                    "Harga parkir motor: Rp3.000/motor\n"
                    "Harga parkir mobil: Rp5.000/mobil"),
  TravelDestination(
      id: 12,
      name: "Telaga Warna",
      category: 'rekomendasi',
      image: [
        'assets/images/Telagawarna.jpg',
        'assets/images/Telagawarna2.jpg',
        'assets/images/Telagawarna3.jpg',
        'assets/images/Telagawarna4.jpg',
      ],
      location: 'Jl. Raya Puncak No. KM 90, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          'Telaga Warna mempunyai keunikan yang khas yaitu dapat berubahnya warna permukaan air telaga. Telaga warna ditumbuhi jenis gulma air (Najas Gramininae) yang mendominasi seluruh permukaan telaga. Kawasan taman wisata telaga warna ini menawarkan panorama alam yang masih asri, terletak di pinggir sebuah telaga yang masih terjaga keasriannya, sehingga wistawan bisa menikmati pemandangan, dan mengelilingi danau menggunakan perahu atau rakit. ',
      rate: 4.8,
      fasility: "Area untuk outbond\n"
                "Track alam\n"
                "Shelter\n"
                "Pos jaga\n"
                "Pusat informasi\n"
                "Menara pengintai setinggi 13,5 meter untuk mengamati burung.",
      wahana: "telaga",
      jam_dan_tiket:"Jam Operasioanl : Senin - Jumat,	08.00 - 16.00 WIB\n"
                    "Sabtu - Minggu	08.00 - 18.00 WIB\n"
                    "Harga tiket masuk Telaga Warna:\n"
                    "wisatawan domestik Rp. 22.500/orang\n"
                    "wisatawan asing Rp. 163.500/orang\n"),
];
