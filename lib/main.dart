import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'responsive_layout.dart';
import 'package:whatsapp_clone/Screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/Screens/web_screen_layout.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Whatsapp_clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,

      ),
      home: ResponsiveLayout(
        mobileScreenLayout:MobileLayoutScreen(),
        webScreenLayout:WebLayoutScreen(),

      ),

    );
  }
}
