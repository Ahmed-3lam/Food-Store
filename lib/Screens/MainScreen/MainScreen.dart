import 'package:flutter/material.dart';
import 'package:job_test1/Screens/CartScreen/CartScreen.dart';
import 'package:job_test1/Screens/HomeScreen/HomeScreen.dart';
import 'package:job_test1/Screens/ProductsScreen/ProcuctsScreen.dart';
import 'package:job_test1/Screens/ProfileScreen/ProfileScreen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex=0;
  List<Widget> screens = [
    HomeScreen(),
    ProductsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(() {
            currentIndex = index;
          });

        },
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.assignment),label:"Categories"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile"),
        ],
      ),

      body: screens[currentIndex],

    );
  }
}
