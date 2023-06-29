import 'dart:async';

import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int timeLeft = 5;
  void _startCounterDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? "D O N E" : timeLeft.toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _startCounterDown,
              color: Colors.deepPurple,
              child: Text(
                'S T A R T',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )),
      ),
    );
  }
}
