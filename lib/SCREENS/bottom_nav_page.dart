import 'package:flutter/material.dart';
import 'package:flutter_assignment_primalcodes/SCREENS/Home_Page.dart';

class Bottomnav_page extends StatefulWidget {
  const Bottomnav_page({Key? key}) : super(key: key);

  @override
  State<Bottomnav_page> createState() => _Bottomnav_pageState();
}

class _Bottomnav_pageState extends State<Bottomnav_page> {
  int index=0;
  final Screens =[
    HomePage(),
    Text("hi"),
    Text("hi"),
    Text("hi"),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.white,
          //indicatorColor: Colors.blue.shade800,
          //labelTextStyle:
        ),
        child: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          ],
        ),
      ),
    );
  }
}
