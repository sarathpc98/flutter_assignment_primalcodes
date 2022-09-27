import 'package:flutter/material.dart';
import 'package:flutter_assignment_primalcodes/SCREENS/bottom_nav_page.dart';

import 'SCREENS/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Bottomnav_page(),
    );
  }
}


