import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class InviteFriendScreen extends StatefulWidget {
  const InviteFriendScreen({super.key});

  @override
  State<InviteFriendScreen> createState() => _InviteFriendScreenState();
}

class _InviteFriendScreenState extends State<InviteFriendScreen> {
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
            title: const Text("INVITE FRIENDS",
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
                  height: MediaQuery.of(context).size.height*0.9,
                width: MediaQuery.of(context).size.width,
               decoration: const BoxDecoration(
            color: c31,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text("Share With Friends",
                style: TextStyle(
                 fontSize: 27,
                 color: c15,
                 fontWeight: FontWeight.w500
                ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text(" Share this app with your friends to join with\nour community and make some extra money!",
              style: TextStyle(
                fontSize: 15,
                color: c14,
                fontWeight: FontWeight.w500
              ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                color: c7,
                borderRadius: BorderRadius.circular(130),
                boxShadow: const [
                  BoxShadow(
                    color: c12,
                    blurRadius: 0.9,
                    spreadRadius: 0.5
                  )
                ]
                ),
                child: Center(
                  child: Image.asset("assets/images/invitefriends.png"),
                ),
              ),
              const SizedBox(height: 45),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
                minWidth: 310,
                splashColor: c22,
                color: c15,
                height: 50,
                onPressed: (){
                },
                child: const Text("INVITE NOW",
                style: TextStyle(
                fontSize: 15,
                color: c7,
                fontWeight: FontWeight.bold
                ),
               ),
              ),
            ],
          ),
        ),
       
          ],
        )
       
      )
    );
  }
}