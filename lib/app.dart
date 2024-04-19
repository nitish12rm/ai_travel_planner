import 'package:ai_travel_planner/features/travel/screen/final/finalScreen.dart';
import 'package:ai_travel_planner/features/travel/screen/home/homescreen.dart';
import 'package:ai_travel_planner/navigationmenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home:  NavigationMenu(),
    );
  }
}