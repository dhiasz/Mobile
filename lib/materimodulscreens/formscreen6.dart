import 'package:flutter/material.dart';

class FormScreen6 extends StatefulWidget {
  const FormScreen6({super.key});

  @override
  State<FormScreen6> createState() => _FormScreen6State();
}

class _FormScreen6State extends State<FormScreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Tampilan Form"),
        ),
        body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String value){
                setState(() {
                  nama = value;
                });
              },
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: 'Masukkan nama',
                border:
                OutlineInputBorder(borderSide: BorderSide(width: 1))
              ),
            ),
            const SizedBox(height: 20),
            Row(children: [
              const Text('Jenis kelamin : '),
              Radio(value: 'laki-laki',
              groupValue: selectedRadio,
              onChanged: (value){
                setState(() {
                  selectedRadio = value.toString();
                });
              }),
              const Text('laki-laki'),
              Radio(value: 'perempuan',
              groupValue: selectedRadio,
              onChanged: (value){
                setState(() {
                  selectedRadio = value.toString();
                });
              }),
              const Text('perempuan'),
            ],
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
              ),
              CheckboxListTile(
              title: const Text('seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                },
                );
              },
              ),
              const SizedBox(height: 20),
              SwitchListTile(title: const Text('lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )
              ),
              child: Text('Submit'),
              ),)
            
          ],
        ),
        ),
    );
  }
}