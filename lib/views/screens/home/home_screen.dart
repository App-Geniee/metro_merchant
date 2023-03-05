
import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
import 'package:metro_merchant/views/screens/home/bottomNavigationBar/homebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() =>
      _HomeScreenState();
}

class _HomeScreenState extends State {
  int _selectedTab = 0;

  List _pages = [
    HomeBar(),
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: AppColors.secondaryColor900,
        unselectedItemColor:AppColors.primaryColor400,
        items: [
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/homeicon.png",),width: 24,), label: ""),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/truck-01.png"),width: 24,), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/icons/todoicon.png"),width: 24,), label: ""),
          BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/icons/profile.png"),width: 24,), label: ""),
        ],
      ),
    );
  }
}
