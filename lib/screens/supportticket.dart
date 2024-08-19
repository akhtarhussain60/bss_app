import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class SupportTicketScreen extends StatefulWidget {
  const SupportTicketScreen({super.key});

  @override
  State<SupportTicketScreen> createState() => _SupportTicketScreenState();
}

class _SupportTicketScreenState extends State<SupportTicketScreen> {
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
            title: const Text("SUPPORT TICKET",
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const SizedBox(
                  width: 270,
                  child: TextField(
                    cursorColor: c15,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: c15,
                      ),
                      focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(
                        color: c15,
                        width: 2,
                       ),
                      ),
                      labelText: "Your Name/ Mail",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                 height: 180,
                margin: const EdgeInsets.only(left: 30 ,right: 30),
                 decoration: BoxDecoration(
                  color: c7,
                  borderRadius: BorderRadius.circular(20),
                   boxShadow: const [
                    BoxShadow(
                      color: c12,
                      blurRadius: 0.9,
                      spreadRadius: 0.5
                    )
                   ]
                 ),
                 child: const Padding(
                   padding: EdgeInsets.only(top: 10 , left: 20 ,right: 20),
                   child: TextField(
                    cursorColor: c15,
                    minLines: 1,
                    maxLines: 7,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write your issue here",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: c14,
                        fontWeight: FontWeight.w500
                      )
                    ),
                   ),
                 )
                ),
                const SizedBox(height: 120),
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: 310,
                  color: c15,
                  height: 50,
                  splashColor: c22,
                  onPressed: (){
                  },
                  child: const Text("SEND",
                  style: TextStyle(
                  fontSize: 15,
                  color: c7,
                  fontWeight: FontWeight.bold
                  ),
                 ),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
       
          ],
        )
       
      ),
    );
  }
}