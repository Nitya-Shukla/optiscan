import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:optiscan/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage, 
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (v)=>setState(() =>currentPage = v),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        items:const [
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.home_15),
            label: "Home",
            icon: Icon(Iconsax.home_1),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.category5),
            label: "Dashboard",
            icon: Icon(Iconsax.category),
          ),
        ],
      ),
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
          )),
    );
  }
}
