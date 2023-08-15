import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/Screens/web_screen_layout.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder:
    (context,constraints){
      if(constraints.maxWidth > 300) {
        return webScreenLayout;
      }
      return mobileScreenLayout;

    }
    );
  }
}
