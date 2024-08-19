import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bigicolor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: c22,
          elevation: 0,
          leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                   child: Container(
                    margin: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                    color: c7,
                    image: DecorationImage(
                    scale: 4,
                    image: AssetImage("assets/images/arrowback.png",
                                 )
                               ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                                 BoxShadow(
                    color: c12,
                    blurRadius: 0.9,
                    spreadRadius: 0.4
                   ),
                  ],
                ),
              ),
            ),
            centerTitle: true,
            title: const Text("TERMS & CONDITIONS",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),
            actions: const [
              Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications,
              size: 20,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
                  width: 230,
                  decoration: const BoxDecoration(
                   image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/BG.png",
                    ),
                   ),
                   borderRadius:BorderRadius.only(topRight: Radius.circular(160) , bottomRight: Radius.circular(100))
                  ),
                ),
                 Container(
                  margin: const EdgeInsets.only(top: 120),
                 width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.9,
                 decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
          ),
          child: const Column(
            children: [
              SizedBox(height: 40),
              Text("Terms & Conditions",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore\nmagna aliquyam erat, sed diam voluptua.\nAt vero eos at accusam et justo duo\ndolores et ea rebum.",
              style: TextStyle(
                fontSize: 15,
                color: c14,
                fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(height: 30),
              Text("Privacy Policy",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20),
              Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore\nmagna aliquyam erat, sed diam voluptua.\nAt vero eos at accusam et justo duo\ndolores et ea rebum.",
              style: TextStyle(
                fontSize: 15,
                color: c14,
                fontWeight: FontWeight.w500
              ),
              ),
            ],
          ),
        ),
       
          ],
        )
        
      ),
    );
  }
}