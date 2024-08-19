import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notify = [
    {
      "image" : "assets/images/Ellipse 290.png",
      "t2" : "You recieved a payment of \$200.00\nfrom Jane",
      "t3" : "9:00 AM",
    },
    {
      "image" : "assets/images/img2.png",
      "t2" : "You recieved a payment of \$200.00\nfrom Kevin",
      "t3" : "9:00 AM",
    },
    {
      "image" : "assets/images/img3.png",
      "t2" : "Anne requested pay of\n\$ 300.00",
      "t3" : "9:00 AM",
    },
    {
      "image" : "assets/images/img4.png",
      "t2" : "You have unread message\nfrom Jane",
      "t3" : "9:00 AM",
    },  
  ];
  List notify2 = [
 {
      "image" : "assets/images/img6.png",
      "t2" : "You recieved a payment of \$200.00\nfrom Kevin",
      "t3" : "9:00 AM",
    },
    {
      "image" : "assets/images/img7.png",
      "t2" : "Your new payment method has been\nadded successfully",
      "t3" : "9:00 AM",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: bigicolor,
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
            title: const Text("NOTIFICATION",
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
                 padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  margin: const EdgeInsets.only(top: 120),
              height: MediaQuery.of(context).size.height*0.9,
            width: MediaQuery.of(context).size.width,
         decoration: const BoxDecoration(
          color: c31,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30))
         ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text("Today",
               style: TextStyle(
                fontSize: 14,
                color: c19,
                fontWeight: FontWeight.bold
               ),
               ),
               Text("Clear All",
               style: TextStyle(
                fontSize: 14,
                color: c19,
                fontWeight: FontWeight.bold
               ),
               )
              ],
            ),
            const SizedBox(height: 10),
             Column(
              children: List.generate(notify.length, (index) => 
              Container(
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 45,
                            padding: const EdgeInsets.only(left: 7,top: 7),
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(notify[index]["image"])
                                ),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(notify[index]["t2"],
                                style: const TextStyle(
                                 fontSize: 11,
                                 color: c11,
                                 fontWeight: FontWeight.bold
                                ),
                                 ),
                                Text(notify[index]["t3"],
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: c19,
                                 ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios_outlined,
                            size: 14,
                            ),
                      ],
                    ),
                 const Divider(
                  indent: 5,
                  endIndent: 5,
                  ),
                 ],
                ),
               ),
              ),
             ),
             const Padding(
               padding: EdgeInsets.only(right: 250),
               child: Text("Yesturday",
               style: TextStyle(
                fontSize: 14,
                color: c19,
                fontWeight: FontWeight.bold
               ),
              ),
             ),
             const SizedBox(height: 10),
             Column(
              children: List.generate(notify2.length, (index) => 
               Container(
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(notify2[index]["image"])
                                ),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(notify2[index]["t2"],
                                style: const TextStyle(
                                 fontSize: 11,
                                 color: c11,
                                 fontWeight: FontWeight.bold
                                ),
                                 ),
                                Text(notify2[index]["t3"],
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: c19,
                                 ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            size: 14,
                          )
                      ],
                    ),
                const Divider(),
                ],
               ),
                ),
             ),
           )
          ],
          ),
        ),
       

          ],
        )
        
        
            
      ),
    );
  }
}