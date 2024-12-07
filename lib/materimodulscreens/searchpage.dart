import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalendarPage(),
    );
  }
}

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  TextEditingController _inputController = TextEditingController();
  
  // Menyimpan catatan berdasarkan tanggal
  Map<DateTime, String> _notes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cipun Calendar'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0), // Padding untuk kiri dan kanan kalender
            child: TableCalendar(
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2100, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Spacer
          if (_selectedDay != null) 
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Padding untuk input field
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Masukan Pengingat pada : ${_selectedDay.toString().split(' ')[0]}',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextField(
                    controller: _inputController,
                    decoration: InputDecoration(
                      labelText: 'Masukkan catatan',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_inputController.text.isNotEmpty) {
                        setState(() {
                          // Menyimpan catatan untuk tanggal yang dipilih
                          _notes[_selectedDay!] = _inputController.text;
                        });
                      }
                    },
                    child: Text('Simpan Catatan'),
                  ),
                  SizedBox(height: 20),
                  // Menampilkan catatan yang telah disimpan untuk tanggal yang dipilih
                  if (_notes.containsKey(_selectedDay))
                    Padding(
                      padding: EdgeInsets.only(top: 10), // Jarak antara tombol simpan dan catatan
                      child: Text(
                        'Catatan: ${_notes[_selectedDay]}',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
