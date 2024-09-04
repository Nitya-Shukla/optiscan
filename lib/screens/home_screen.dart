import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optiscan/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: [
                AppBar(
                  backgroundColor: AppConstants.baseBgColor,
                  centerTitle: true,
                  title: Text(
                    "OptiScan",
                    style: GoogleFonts.kanit(
                      fontSize: 20,
                      color: AppConstants.baseFontColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: AppConstants.secondartBgColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 250,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "STATS",
                        style: GoogleFonts.teko(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppConstants.baseFontColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
