import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 43);
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          children: [
            Text(
              "Heigh = " + MediaQuery.of(context).size.height.toString(),
              style: textStyle,
            ),
            Text(
              "Width = " + MediaQuery.of(context).size.width.toString(),
              style: textStyle,
            ),
            Text(
              "Aspect radio = " +
                  MediaQuery.of(context).size.aspectRatio.toString(),
              style: textStyle,
            ),
            Text(
              MediaQuery.of(context).orientation.toString(),
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
