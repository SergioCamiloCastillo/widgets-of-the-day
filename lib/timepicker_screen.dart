import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});

  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 40);
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
          setState(() {
            _timeOfDay = value!;
          });
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString()),
            MaterialButton(
              onPressed: _showTimePicker,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Pick Time",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.blue[400],
            ),
          ],
        ),
      ),
    );
  }
}
