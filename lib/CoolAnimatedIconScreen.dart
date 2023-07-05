import 'package:flutter/material.dart';

class CoolAnimatedIconScreen extends StatefulWidget {
  const CoolAnimatedIconScreen({super.key});

  @override
  State<CoolAnimatedIconScreen> createState() => _CoolAnimatedIconScreenState();
}

class _CoolAnimatedIconScreenState extends State<CoolAnimatedIconScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlaying = false;
  void _iconTapped() {
    print("hizo click");
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
            size: 150,
          ),
        ),
      ),
    );
  }
}
