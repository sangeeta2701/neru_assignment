
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neru_assignment/Screens/home_screen.dart';
import 'package:neru_assignment/Screens/middle_screen.dart';
import 'package:neru_assignment/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    Timer(Duration(seconds: 3), 
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MiddleScreen(),),);
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          wColor,
          lightBlue,
          mediumBlue,
          // darkBlue,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter)
      ),
      child: Center(child: Image.asset("assets/logo.png"),),
    );
  }
}