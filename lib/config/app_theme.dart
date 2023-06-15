import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor:
              Colors.green, // Establecer el color de fondo del AppBar en verde
        ),
      );
}
