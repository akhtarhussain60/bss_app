import 'dart:async';

import 'package:bss_app/screens/onboardscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
     Timer(const Duration(seconds: 2),() {
      Navigator.pushReplacement(context,
       MaterialPageRoute(
        builder: (context) => const OnBoardScreen(),
        )
      );
    }
  );
}
  @override
   Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: const Color(0xFF6043F5),
      body: Center(
       child:  Image.asset("assets/images/applogo.png",
       ),
      ),
    );
  }
}