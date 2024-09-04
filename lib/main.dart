import 'package:flutter/material.dart';
import 'package:optiscan/constants.dart';
import 'package:optiscan/screens/home_screen.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OptiScan',
      debugShowCheckedModeBanner: false,
      theme: AppConstants().themeData,
      home: const HomeScreen(),
    );
  }
}
