import 'package:bss_app/screens/withdrawsuccess.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  String? withdraw;
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
            title: const Text("WITHDRAW",
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
          // alignment: Alignment.bottomLeft,
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 18),
                Container(
                  height: 190,
                  width: 310,
                  decoration: const BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/Mask Group 6.png")
                  ) ,
                   color: c9,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: const Column( 
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 55),
                        child: Text("Your Balance",
                        style: TextStyle(
                          fontSize: 19,
                          color: c7,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text("\$3500.00",
                        style: TextStyle(
                          fontSize: 33,
                          color: c7,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 17),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Amount",
                    style: TextStyle(
                     fontSize: 15,
                     color: c19,
                     fontWeight: FontWeight.bold,
                    ),
                   ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 45,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: c7,
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                      color: c15,
                      width: 1,
                    )
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("USD",
                        style: TextStyle(
                          fontSize: 16,
                          color: c19,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: SizedBox(
                          width: 100,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "1900.00",
                            ),
                          ),
                        )
                      ),
                      
                    ],
                  )
                ),
                const SizedBox(height: 12),
                Container(
                         height: 70,
                         width: 310,
                         decoration: BoxDecoration(
                          color: c7,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:  const [
                            BoxShadow(
                              color: c12,
                              blurRadius: 0.9,
                              spreadRadius: 0.5
                            )
                          ]
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 6,right: 6),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                                Container(
                           height: 55,
                           width: 55,
                           decoration: BoxDecoration(
                            image: const DecorationImage(
                              scale: 4,
                              image: AssetImage("assets/images/tansfers.png")
                            ),
                            border: Border.all(
                              color: c15,
                              width: 3
                            ),
                            color: c7,
                            borderRadius: BorderRadius.circular(50)
                           ),
                      ),
                             const Text("BANK TRANSFER",
                             style: TextStyle(
                              fontSize: 12,
                              color: c19,
                              fontWeight: FontWeight.w500
                             ),
                             ),
                             Radio(value: "Bank Transfer", groupValue: withdraw, onChanged: (value) {
                               setState(() {
                                 withdraw = value.toString();
                               });
                              }
                             )
                            ],
                           ),
                         ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                         height: 70,
                         width: 310,
                         decoration: BoxDecoration(
                          color: c7,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:  const [
                            BoxShadow(
                              color: c12,
                              blurRadius: 0.9,
                              spreadRadius: 0.5
                            )
                          ]
                         ),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Container(
                         height: 55,
                         width: 55,
                         decoration: BoxDecoration(
                          image: const DecorationImage(
                            scale: 4,
                            image: AssetImage("assets/images/debit.png")
                          ),
                          border: Border.all(
                            color: c15,
                            width: 3
                          ),
                          color: c7,
                          borderRadius: BorderRadius.circular(50)
                         ),
                      ),
                           const Text("CREDIT/DEBIT CARD ",
                           style: TextStyle(
                            fontSize: 12,
                            color: c19,
                            fontWeight: FontWeight.w500
                           ),
                           ),
                           Radio(value: "Credit/Debit Card", groupValue: withdraw, onChanged: (value) {
                             setState(() {
                               withdraw = value.toString();
                             });
                            }
                           )
                          ],
                         ),
                      ),
                      const SizedBox(height: 17),
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: 310,
                  color: c15,
                  height: 50,
                  splashColor: c22,
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(
                      builder: (context) => const WithdrawSuccessful(),
                      )
                     );
                  },
                  child: const Text("NEXT",
                  style: TextStyle(
                  fontSize: 14,
                  color: c7,
                  fontWeight: FontWeight.bold
                  ),
                 ),
                ),
                const SizedBox(height: 10,)
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