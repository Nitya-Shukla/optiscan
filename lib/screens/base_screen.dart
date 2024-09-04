import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:optiscan/screens/dashboard_screen.dart';
import 'package:optiscan/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentPage = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage.toInt(),
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (v) => setState(() {
          currentPage = v;
          pageController.jumpToPage(v);
        }),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        items: const [
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
      body: PageView(
        controller: pageController,
        children: const [
          HomeScreen(),
          DashboardScreen(),
        ],
      ),
    );
  }
}
