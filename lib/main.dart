import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/page/profile.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';
import 'package:wisata_mobile_5/screens/Loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Edit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginForm()
    );
  }
}

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   // Controller untuk mengelola input nama dan email
//   final TextEditingController _nameController = TextEditingController(text: "John Doe");
//   final TextEditingController _emailController = TextEditingController(text: "john.doe@example.com");

//   bool isEditing = false; // Mengatur mode edit/tampilan profil

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profil"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: isEditing ? _buildEditForm() : _buildProfileView(),
//       ),
//     );
//   }

//   Widget _buildProfileView() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CircleAvatar(
//           radius: 50,
//           child: Icon(Icons.person, size: 50),
//         ),
//         SizedBox(height: 20),
//         Text(
//           _nameController.text,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         Text(
//           _emailController.text,
//           style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//         ),
//         SizedBox(height: 30),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               isEditing = true; // Masuk ke mode edit
//             });
//           },
//           child: Text("Edit Profil"),
//         ),
//       ],
//     );
//   }

//   Widget _buildEditForm() {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Edit Profil",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: _nameController,
//             decoration: InputDecoration(
//               labelText: "Nama",
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: _emailController,
//             decoration: InputDecoration(
//               labelText: "Email",
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isEditing = false; // Kembali ke tampilan profil biasa
//                   });
//                 },
//                 child: Text("Batal"),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.grey,
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isEditing = false; // Simpan perubahan dan kembali ke tampilan profil biasa
//                   });
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Perubahan disimpan!")),
//                   );
//                 },
//                 child: Text("Simpan"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:wisata_mobile_5/screens/Loginpage.dart';
// import 'package:wisata_mobile_5/screens/splashscreen.dart';


// void main() {
//   runApp(const TravelApp());
// }

// class TravelApp extends StatelessWidget {
//   const TravelApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Splashscreen(),
//     );
//   }
// }
