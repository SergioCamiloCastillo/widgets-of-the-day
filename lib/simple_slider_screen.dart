import 'package:flutter/material.dart';

class SimpleSliderScreen extends StatefulWidget {
  const SimpleSliderScreen({super.key});

  @override
  State<SimpleSliderScreen> createState() => _SimpleSliderScreenState();
}

class _SimpleSliderScreenState extends State<SimpleSliderScreen> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toString()),
          Slider(
              value: _currentValue,
              min: 0,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.blueAccent,
              thumbColor: Colors.red,
              label: _currentValue.toString(),
              max: 10,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              })
        ],
      ),
    );
  }
}
