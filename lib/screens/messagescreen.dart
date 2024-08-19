import 'package:bss_app/screens/textsent.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  List messagelist = [
    {
      "image" : "assets/images/Ellipse 277.png",
      "name" : "JENNY",
      "msg" : "Can I book your place",
      "time" : "9:00 AM",
    },
     {
      "image" : "assets/images/Ellipse 277.png",
      "name" : "Ali",
      "msg" : "Can I book your place",
      "time" : "4:40 PM",
    }, {
      "image" : "assets/images/Ellipse 277.png",
      "name" : "Will",
      "msg" : "Can I book your place",
      "time" : "3:00 AM",
    }, {
      "image" : "assets/images/Ellipse 277.png",
      "name" : "Tom",
      "msg" : "Can I book your place",
      "time" : "1:00 AM",
    },
  
  
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bigicolor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: c22,
          centerTitle: true,
          title: const Text("MASSEGES",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
           ),
          ),
          actions: const [
            Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons. notifications,size: 20,),
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
              padding: const EdgeInsets.only(left: 30,right: 30),
              height: MediaQuery.of(context).size.height*0.8,
              decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => const TextSentScreen(),
                          )
                        );
                      },
                      child: Column(
                        children: List.generate(messagelist.length, (index) => 
                        Container(
                          margin: const EdgeInsets.all(2),
                          child: Column(
                            children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(messagelist[index]["image"],
                                    // scale: 4.5,
                                    height: 50,width: 50
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(messagelist[index]["name"],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: c19,
                                           ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(messagelist[index]["msg"],
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: c19,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                               
                                Text(messagelist[index]["time"],
                                style: const TextStyle(
                                 fontSize: 10,
                                 color: c19
                                ),
                                )
                              ],
                            ),
                            const Divider()
                            ],
                           ),
                        )
                       
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
