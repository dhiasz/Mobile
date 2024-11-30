import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';



TextEditingController getUser = TextEditingController();
TextEditingController getPass = TextEditingController();

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: getUser,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: getPass,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ambil username dari TextField
                String username = getUser.text;

                // Navigasi ke HomePage dan kirimkan username
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(username: username),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna background button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}