import 'package:flutter/material.dart';
import 'package:widgetsoftheday/gridview_screen.dart';
import 'package:widgetsoftheday/round_corner_screen.dart';

class TikTokScrollScreen extends StatelessWidget {
  final _controller = PageController();

  TikTokScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [GridViewScreen(), RoundCornerScreen()],
      ),
    );
  }
}
