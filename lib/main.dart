import 'package:farmer_smart_card_ui/Views/SmartCardPage.dart';
import 'package:farmer_smart_card_ui/Views/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Views/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Smart Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: SplashScreen(),
    );
  }
}
