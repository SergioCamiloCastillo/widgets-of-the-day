import 'package:flutter/material.dart';
import 'package:widgetsoftheday/config/app_theme.dart';
import 'package:widgetsoftheday/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme().getTheme(), home: const HomePage());
  }
}
