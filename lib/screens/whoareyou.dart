import 'package:bss_app/screens/createanaccount.dart';
import 'package:bss_app/screens/hostaccount.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class WhoAreYouOne extends StatefulWidget {
  const WhoAreYouOne({super.key});

  @override
  State<WhoAreYouOne> createState() => _WhoAreYouOneState();
}

class _WhoAreYouOneState extends State<WhoAreYouOne> {
  String selected = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(c11.withOpacity(0.8), BlendMode.darken),
              image: const AssetImage("assets/images/screen2.png"),
              fit: BoxFit.cover,
            )),
            child: Container(
              margin: const EdgeInsets.only(left: 30,right: 30),
               alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/applogo.png",
                )
              ),
            ),
           Positioned(
            bottom: 0,
            child: Column(children: [
              Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: c31,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        "WHO ARE YOU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: c8,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 40),
                                child: const Text(
                                  "GUEST",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: c8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  selected = "guest";
                                  setState(() {});
                                  print("It's gust");
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  height: 110,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      color: c7,
                                      boxShadow: [
                                        BoxShadow(
                                            color: c12,
                                            blurRadius: 0.9,
                                            spreadRadius: 0.4)
                                      ]),
                                  child: selected == "guest"
                                      ? Image.asset(
                                          "assets/images/salon.png",
                                          scale: 4,
                                        )
                                      : Image.asset(
                                          "assets/images/salong.png",
                                          scale: 4,
                                        ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                child: const Text(
                                  "BEAUTY \n PROFESSIONAL",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13, color: c8),
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            indent: 40,
                            endIndent: 40,
                            color: c14,
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 40, left: 10),
                                child: const Text(
                                  "HOST",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: c8),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //yhn hum selected variable ko value pass ho gai
                                  selected = "host";
                                  setState(() {});
                                  print("It's tab");
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 13),
                                  height: 110,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      color: c7,
                                      boxShadow: [
                                        BoxShadow(
                                            color: c12,
                                            blurRadius: 0.9,
                                            spreadRadius: 0.4)
                                      ]),
                                  child: selected == "host"
                                      ? Image.asset(
                                          "assets/images/chairlog.png",
                                          scale: 4,
                                        )
                                      : Image.asset(
                                          "assets/images/chairlogg.png",
                                          scale: 4,
                                        ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 12, right: 5),
                                child: const Text(
                                  " SALON\n OWNER",
                                  style: TextStyle(fontSize: 13, color: c8),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 25),
                      child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        minWidth: MediaQuery.of(context).size.width,
                        splashColor: c22,
                        color: selected == "guest" || selected == "host"
                            ? c15
                            : c18,
                        height: 55,
                        onPressed: () {
                          selected == "guest"
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AcountCreatScreen(),
                                  ),
                                )
                              : selected == "host"
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HostAccountScreen(),
                                      ),
                                      // (route) => false
                                    )
                                  : () {};
                        },
                        child: const Text(
                          "NEXT",
                          style: TextStyle(
                              fontSize: 15,
                              color: c7,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
