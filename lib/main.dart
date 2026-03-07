import 'package:flutter/material.dart';
import 'package:flex_yemen_fresh/screens/home_screen.dart';
import 'package:flex_yemen_fresh/screens/map_screen.dart';
import 'package:flex_yemen_fresh/screens/store_screen.dart';
import 'package:flex_yemen_fresh/screens/profile_screen.dart';
import 'package:flex_yemen_fresh/widgets/custom_app_bar.dart';
import 'package:flex_yemen_fresh/widgets/bottom_nav_bar.dart';
import 'package:flex_yemen_fresh/utils/constants.dart';

void main() {
  runApp(const FlexYemenApp());
}

class FlexYemenApp extends StatefulWidget {
  const FlexYemenApp({super.key});

  @override
  State<FlexYemenApp> createState() => _FlexYemenAppState();
}

class _FlexYemenAppState extends State<FlexYemenApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    MapScreen(),
    StoreScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: CustomAppBar(
          isDarkMode: false,
          cartCount: 0,
          onThemeToggle: () {},
          onSettingsPressed: () {},
          onCartPressed: () {},
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          isDarkMode: false,
          onItemTapped: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
