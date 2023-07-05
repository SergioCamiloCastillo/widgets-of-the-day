import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2026))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_dateTime.year.toString()),
          MaterialButton(
            onPressed: _showDatePicker,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Escoja la fecha",
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.green[300],
          ),
        ],
      )),
    );
  }
}
