import 'package:flutter/material.dart';

ThemeData? themeApp() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}