import 'dart:async';

import 'package:bss_app/screens/payment1.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() => _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {

   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context,
       MaterialPageRoute(
        builder:(context) => const PaymentOneScreen(),
        )
       );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: bigicolor,
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/success.png",
            scale: 4.5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("  Payment\nSuccessful",
            style: TextStyle(
              fontSize: 30,
              color: c7,
              fontWeight: FontWeight.bold
            ),
            ),
          )
        ],
       ),
      ),
    );
  }
}