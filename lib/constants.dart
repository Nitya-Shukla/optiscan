import 'package:flutter/material.dart';

class AppConstants {
  static const baseBgColor = Color(0xFF2F2F2F);
  static const secondartBgColor = Color(0xFF161616);
  static const baseFontColor = Color(0xFFfefefe);

  final ThemeData themeData = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      primary: Color(0xFFB93C5D),
      onPrimary: Colors.black,
      secondary: Color(0xFFEFF3F3),
      onSecondary: Color(0xFF322942),
      error: Colors.redAccent,
      onError: Colors.white,
      surface: Color(0xFFFAFBFB),
      onSurface: Color(0xFF241E30),
      brightness: Brightness.light,
      background: AppConstants.baseBgColor,
      onBackground: AppConstants.secondartBgColor,
    ),
  );
}
