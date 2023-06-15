import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,

              child: Image.asset('lib/images/vovleralfuturo.jpeg', fit: BoxFit.contain,alignment: Alignment.topCenter,)),
        ),
      ),
    );
  }
}
