import 'package:bss_app/screens/aboutapp.dart';
import 'package:bss_app/screens/editprofile.dart';
import 'package:bss_app/screens/invitefriend.dart';
import 'package:bss_app/screens/notification.dart';
import 'package:bss_app/screens/payment&withdraw.dart';
import 'package:bss_app/screens/reviewscreen.dart';
import 'package:bss_app/screens/supportticket.dart';
import 'package:bss_app/screens/welcomescreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

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
          centerTitle: true,
          title: const Text("SETTINGS",
          style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
           ) ,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),)
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.notifications,
                size: 20,
                ),
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
          height: MediaQuery.of(context).size.height*0.8,
          decoration: const BoxDecoration(
          color: c31,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30)),
          ),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification:(OverscrollIndicatorNotification overscroll){
              overscroll.disallowIndicator();
              return true;
            } ,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                     const Padding(
                       padding: EdgeInsets.only(right: 20),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           CircleAvatar(
                             radius: 45,
                             foregroundImage:AssetImage("assets/images/Ellipse 277.png"),
                           ),
                           Column(
                            children: [
                              Text("ADAM SANDER",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                 Icon(Icons.location_on,
                                  size: 20,
                                   color: c14,
                                  ),
                                  Text("  Texas, USA",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: c14
                                  ),
                                 ),
                                ],
                              ),
                            ],
                           )
                         ],
                       ),
                     ),
              
                   const SizedBox(height: 8,),
                    const Divider(
                     endIndent: 15,
                      indent: 12,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 5),
                      height: 65,
                      decoration: BoxDecoration(
                        color: c15,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/transfer.png",
                            height: 20,
                            width: 20,
                            ),
                            const Text("SWITCH TO RENTING",
                            style: TextStyle(
                              fontSize: 15,
                              color: c7,
                              fontWeight: FontWeight.w500
                            ),
                           ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen()
                          )
                         );
                      },
                      child: Container(
                       height: 55,
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset('assets/images/user.png',
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text('Profile',
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PaymentAndWithdrawalScreen(),)
                         );
                      },
                      child: Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/card.png",
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("Payments And Withdrawals",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context) => const ReviewScreen(),
                            )
                          );
                      },
                      child: Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/comment.png",
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("Reviews",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const InviteFriendScreen(),)
                        );
                      },
                      child: Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/high-five.png",
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("Invite Friends",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const SupportTicketScreen(),
                          )
                        );
                      },
                      child: Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/group.png",
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("Support Tickets",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const AboutAppScreen(),)
                        );
                      },
                      child: Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/about.png",
                            height: 22,
                            width: 22,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("About App",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
              Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: MediaQuery.of(context).size.width,
                  color: c15,
                  height: 50,
                  splashColor: c22,
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                     MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                     (route) => false);
                  },
                  child: const Text("LOG OUT",
                  style: TextStyle(
                  fontSize: 15,
                  color: c7,
                  fontWeight: FontWeight.bold
                  ),
                 ),
                ),
              ),
              const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
      
          ],
        )
        
      
      ),
    );
  }
}