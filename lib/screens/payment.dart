import 'package:bss_app/screens/payment2.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
 
  List cashcard = [
    {
      "t1" : "Bankname",
      "t2" : "8323",
      "t3" : "CARDHOLDER NAME",
      "t4" : "ADAM SANDAR",
      "t5" : "EXPIRE DATE",
      "t6" : "10 / 2023",
      "img" : "assets/images/dot.png",
      "img2" : "assets/images/visa.png",
    },
    {
      "t1" : "Bankname",
      "t2" : "8323",
      "t3" : "CARDHOLDER NAME",
      "t4" : "ADAM SANDAR",
      "t5" : "EXPIRE DATE",
      "t6" : "10 / 2023",
      "img" : "assets/images/dot.png",
      "img2" : "assets/images/visa.png",
    },
  ];

  String dropbutton = "Saved Cards";
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
            title: const Text("PAYMENTS",
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
                  height: MediaQuery.of(context).size.height*0.9,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 120),
                   decoration: const BoxDecoration(
                   color: c31,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30))
                   ),
                   child: Padding(
                   padding: const EdgeInsets.only(left: 25 ,right: 25 ,top: 20),
                   child: Column(
                  children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("PAYMENT OPTION",
                        style: TextStyle(
                          fontSize: 15,
                          color: c19,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("Credit/Debit Cards",
                        style: TextStyle(
                          fontSize: 11,
                          color: c19,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                       color: c7,
                       borderRadius: BorderRadius.circular(8),
                       boxShadow:  const [
                        BoxShadow(
                          color: c12,
                          blurRadius: 0.9,
                          spreadRadius: 0.7
                        )
                       ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: DropdownButton<String>(
                         alignment: Alignment.center,
                          borderRadius: BorderRadius.circular(10),
                         value: dropbutton,
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            style: const TextStyle(color:c11),
                             underline: Container(
                              ),
                                onChanged: (String? value) {
                                 setState(() {
                                  dropbutton = value!;
                                });
                               },
                                items: <String>["Saved Cards" ,"Change Cards"].map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                   value: value,
                                    child: Text(value),
                                      );
                                   }).toList(),
                                  ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: List.generate(cashcard.length, (index) =>
                  Container(
                      width: 310,
                      height: 180,
                      margin: const EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                        color: c29,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.7,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20 ,right: 20 ),
                        child: Column(
                          children:[
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Bankname",
                                style: TextStyle(
                                 fontFamily:  "fonttwo",
                                 fontSize: 16,
                                 fontWeight: FontWeight.w700
                                ),
                                ),
                                Image(
                                  height: 60,
                                  width: 60,
                                  image: AssetImage("assets/images/visa.png"))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    height: 40,
                                    width: 40,
                                     image: AssetImage("assets/images/dot.png")
                                    ),
                                    Image(
                                    height: 40,
                                    width: 40,
                                     image: AssetImage("assets/images/dot.png")
                                    ),
                                    Image(
                                    height: 40,
                                    width: 40,
                                     image: AssetImage("assets/images/dot.png")
                                    ),
                                    Text("8323",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 60 ,top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("CARDHOLDER NAME",
                                      style: TextStyle(
                                        fontSize: 8
                                      ),
                                      ),
                                      Text("ADAM SANDAR",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400
                                      ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("EXPIRE DATE",
                                      style: TextStyle(
                                       fontSize: 8,
                                      ),
                                      ),
                                      Text("10 / 2023",
                                       style: TextStyle(
                                        fontSize: 16
                                       ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                             GestureDetector(
                              onTap: () {
                                showModalBottomSheet(context: context, 
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)
                                  )
                                ),
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 250,
                                    child:Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.delete,
                                            color: c27,
                                            size: 28,
                                            ),
                                            Text(" Remove Card",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: c11,
                                              fontWeight: FontWeight.w500
                                            ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        const Text("Are you sure you want to remove",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: c14,
                                          fontWeight: FontWeight.w500
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 45 ,right: 45),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset("assets/images/dot.png",
                                              scale: 2,
                                              ),
                                              Image.asset("assets/images/dot.png",
                                              scale: 2,
                                              ),
                                              Image.asset("assets/images/dot.png",
                                              scale: 2,
                                              ),
                                              const Text("8323 card ?",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: c14,
                                                fontWeight: FontWeight.w500
                                              ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30 ,right: 30),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 120,
                                                decoration:BoxDecoration(
                                                 color: c7,
                                                 border: Border.all(
                                                  color: c8,
                                                  width: 0.5
                                                 ),
                                                 boxShadow: const [
                                                  BoxShadow(
                                                   color: c12,
                                                   blurRadius: 0.9,
                                                   spreadRadius: 0.5,
                                                  )
                                                 ],
                                                 borderRadius: const BorderRadius.all(Radius.circular(30))
                                                ),
                                                child: TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                   child: const Text("Cancel",
                                                   style: TextStyle(
                                                    fontSize: 16,
                                                    color: c14,
                                                    fontWeight: FontWeight.w500
                                                   ),
                                                   )
                                                   ),
                                              ),
                                              MaterialButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  minWidth: 120,
                                  height: 40,
                                  color: c15,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: const Text("Remove",
                                  style: TextStyle(
                                    color: c7,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ) ,
                                  );
                                }
                                );
                              },
                               child: const Align(
                                alignment: Alignment.topRight,
                                 child: Icon(Icons.delete,
                                 size: 25,
                                 color: c15,
                                ),
                                                         ),
                             ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), 
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => const PaymentScreenTwo(),
                      )
                    );
                  },
                  child: Container(
                    height: 70,
                    decoration: const BoxDecoration(
                     color: c7,
                     boxShadow: [
                      BoxShadow(
                        color: c12,
                        blurRadius: 0.9,
                        spreadRadius: 0.5
                      )
                     ],
                     borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                     child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_circle,
                        color: c15,
                        size: 40,
                        ),
                        Text("Add New Card",
                        style: TextStyle(
                          fontSize: 14,
                          color: c14,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                     ),
                  ),
                )       
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