import 'dart:async';

import 'package:bss_app/screens/withdraw.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class WithdrawSuccessful extends StatefulWidget {
  const WithdrawSuccessful({super.key});

  @override
  State<WithdrawSuccessful> createState() => _WithdrawSuccessfulState();
}

class _WithdrawSuccessfulState extends State<WithdrawSuccessful> {
 
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context) => const WithdrawScreen(),
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
            child: Text(" Withdraw\nSuccessful",
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