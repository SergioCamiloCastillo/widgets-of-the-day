import 'package:flutter/material.dart';
import 'package:widgetsoftheday/alert_dialog_screen.dart';
import 'package:widgetsoftheday/animated_container.dart';
import 'package:widgetsoftheday/appbar_screen.dart';
import 'package:widgetsoftheday/bottom_navbar.dart';
import 'package:widgetsoftheday/column_row_screen.dart';
import 'package:widgetsoftheday/config/app_theme.dart';
import 'package:widgetsoftheday/container_screen.dart';
import 'package:widgetsoftheday/expanded_screen.dart';
import 'package:widgetsoftheday/gesture_detector_screen.dart';
import 'package:widgetsoftheday/gridview_screen.dart';
import 'package:widgetsoftheday/image_screen.dart';
import 'package:widgetsoftheday/list_view_screen.dart';
import 'package:widgetsoftheday/mediaquery_screen.dart';
import 'package:widgetsoftheday/ricktext_screen.dart';
import 'package:widgetsoftheday/round_corner_screen.dart';
import 'package:widgetsoftheday/sliverbar_screen.dart';
import 'package:widgetsoftheday/tabbar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const RichTextScreen());
  }
}
