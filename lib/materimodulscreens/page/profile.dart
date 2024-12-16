import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Controllers untuk mengelola input nama, email, alamat dan tanggal lahir
  TextEditingController getUser = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  late String username;
  bool isEditing = false; // Mengatur mode edit/tampilan profil

  @override
  void initState() {
    super.initState();
    username = widget.username; // Ambil nama pengguna dari widget
    getUser.text = username;
    updateEmailController();
  }

  void updateEmailController() {
    _emailController.text = '$username@gmail.com';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: isEditing ? _buildEditForm() : _buildProfileView(),
      ),
    );
  }

  Widget _buildProfileView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            children: [
              CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: 50),
        ),
        SizedBox(height: 20),
        Text(
          username,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          _emailController.text,
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SizedBox(height: 8),
        _addressController.text.isNotEmpty
            ? Text(
                'Alamat: ${_addressController.text}',
                style: TextStyle(fontSize: 16),
              )
            : Container(),
        SizedBox(height: 8),
        _dobController.text.isNotEmpty
            ? Text(
                'Tanggal Lahir: ${_dobController.text}',
                style: TextStyle(fontSize: 16),
              )
            : Container(),
            SizedBox(height: 8),
        _contactController.text.isNotEmpty
            ? Text(
                'Contact: ${_contactController.text}',
                style: TextStyle(fontSize: 16),
              )
            : Container(),
        SizedBox(height: 120),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isEditing = true;
            });
          },
          child: Text("Edit Profil"),
        ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildEditForm() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Edit Profil",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            controller: getUser,
            decoration: InputDecoration(
              labelText: "Nama",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                username = value;
                updateEmailController();
              });
            },
          ),
          SizedBox(height: 20),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
            readOnly: true,
          ),
          SizedBox(height: 20),
          TextField(
            controller: _addressController,
            decoration: InputDecoration(
              labelText: "Address",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _dobController,
            decoration: InputDecoration(
              labelText: "Tanggal Lahir",
              border: OutlineInputBorder(),
            ),
            onTap: () async {
              // Gunakan DatePicker untuk memilih tanggal
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );

              if (pickedDate != null) {
                setState(() {
                  _dobController.text = "${pickedDate.toLocal()}".split(' ')[0];
                });
              }
            },
          ),
          SizedBox(height: 20),
          TextField(
            controller: _contactController,
            decoration: InputDecoration(
              labelText: "Contact",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEditing = false;
                    updateEmailController();
                  });
                },
                child: Text("Batal"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEditing = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Perubahan disimpan!")),
                  );
                },
                child: Text("Simpan"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
