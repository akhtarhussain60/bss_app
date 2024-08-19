import 'package:bss_app/screens/paymentsuccesful.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class PaymentOneScreen extends StatefulWidget {
  const PaymentOneScreen({super.key});

  @override
  State<PaymentOneScreen> createState() => _PaymentOneScreenState();
}

class _PaymentOneScreenState extends State<PaymentOneScreen> {

  List debitcard = [
    {
      "t1" : "Bankname",
      "t2" : "8323",
      "t3" : "CARDHOLDER NAME",
      "t4" : "ADAM SANDAR",
      "t5" : "EXPIRE DATE",
      "t6" : "10 / 2023",
      "img" : "assets/images/dot.png",
      "img2" : "assets/images/visa.png",
      "icon" : Icons.delete
    }
  ];
   String dropvalue = "Day 1";
   String drop = "Change Cards";

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
            title: const Text("ADD PAYMENT METHOD",
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
                   borderRadius:BorderRadius.only(topRight: Radius.circular(160) ,
                    bottomRight: Radius.circular(100))
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120),
                  height: MediaQuery.of(context).size.height*0.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                   color: c31,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20 ,right: 20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                const SizedBox(height: 20),
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
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 130,
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
                                    child: DropdownButton<String>(
                                      isDense: true,
                                     alignment: Alignment.center,
                                      borderRadius: BorderRadius.circular(10),
                                     value: drop,
                                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                        style: const TextStyle(color:c11),
                                         underline: Container(
                                          ),
                                            onChanged: (String? value) {
                                             setState(() {
                                              drop = value!;
                                            });
                                           },
                                            items: <String>["Saved Cards","Change Cards"].map<DropdownMenuItem<String>>((value) {
                                              return DropdownMenuItem<String>(
                                               value: value,
                                                child: Text(value),
                                                  );
                                               }).toList(),
                                            ),
                                     ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  height: 180,
                                  width: 310,
                                  decoration: const BoxDecoration(
                                   color: c29,
                                   borderRadius: BorderRadius.all(Radius.circular(20)),
                                   boxShadow: [
                                    BoxShadow(
                                      color: c12,
                                      blurRadius: 0.9,
                                      spreadRadius: 0.9
                                    )
                                   ]
                                  ),
                                  child: Column(
                                    children: List.generate(debitcard.length, (index) => 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20 ,right: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                          Text(debitcard[index]["t1"],
                                          style: const TextStyle(
                                           fontFamily:  "fonttwo",
                                           fontSize: 16,
                                           fontWeight: FontWeight.w700
                                          ),
                                          ),
                                          Image(
                                            height: 60,
                                            width: 60,
                                            image: AssetImage(debitcard[index]["img2"]))
                                        ],
                                      ),
                                      Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image(
                                            height: 40,
                                            width: 40,
                                             image: AssetImage(debitcard[index]["img"])
                                            ),
                                            Image(
                                            height: 40,
                                            width: 40,
                                             image: AssetImage(debitcard[index]["img"])
                                            ),
                                            Image(
                                            height: 40,
                                            width: 40,
                                             image: AssetImage(debitcard[index]["img"])
                                            ),
                                          Text(debitcard[index]["t2"],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60 ,top: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(debitcard[index]["t3"],
                                              style: const TextStyle(
                                                fontSize: 8
                                              ),
                                              ),
                                              Text(debitcard[index]["t4"],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400
                                              ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(debitcard[index]["t5"],
                                              style: const TextStyle(
                                               fontSize: 8,
                                              ),
                                              ),
                                              Text(debitcard[index]["t6"],
                                               style: const TextStyle(
                                                fontSize: 16
                                               ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                     Align(
                                        alignment: Alignment.topRight,
                                         child: Icon(debitcard[index]["icon"],
                                         size: 25,
                                         color: c15,
                                        ),
                                       )
                                        ],
                                      ),
                                    )
                                    )
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Black Shadow",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: c14,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 80,
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
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(10),
                                     value: dropvalue,
                                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                        style: const TextStyle(color:c11),
                                         underline: Container(
                                          ),
                                            onChanged: (String? value) {
                                             setState(() {
                                              dropvalue = value!;
                                            });
                                           },
                                            items: <String>["Day 1" ,"Days 2" , "Days 3" , "Days 4" , "Days 5"].map<DropdownMenuItem<String>>((value) {
                                              return DropdownMenuItem<String>(
                                               value: value,
                                                child: Text(value),
                                                  );
                                               }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    const SizedBox(height: 5),
                                    const Divider(),
                                    const SizedBox(height: 5),
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Payment Detail",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: c19,
                                        fontWeight: FontWeight.w500
                                       ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                   const Align(
                                    alignment: Alignment.topLeft,
                                     child: Text("Black Shadow - 5 days",
                                     style: TextStyle(
                                      fontSize: 12,
                                      color: c14,
                                     ),
                                     ),
                                   ),
                                   const SizedBox(height: 5,),
                                   const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rental",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      ),
                                      Text("\$250.00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      )
                                    ],
                                   ),
                                   const SizedBox(height: 4),
                                   const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Tax",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      ),
                                      Text("\$10.00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      )
                                    ],
                                   ),
                                   const SizedBox(height: 4),
                                   const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Extra",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      ),
                                      Text("\$0.00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: c14
                                      ),
                                      )
                                    ],
                                   ),
                                   const SizedBox(height: 5),
                                   const Divider(),
                                   const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: c8,
                                        fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      Text("\$260.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: c8,
                                        fontWeight: FontWeight.w500
                                       ),
                                      )
                                    ],
                                   ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
          ],
        ),
        bottomSheet: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: c7,
                            boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.6
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("\$50/DAY",
                              style: TextStyle(
                                fontSize: 16,
                                color: c14,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                              MaterialButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) =>const PaymentSuccessfulScreen() ,
                                      )
                                    );
                                  },
                                  minWidth: 160,
                                  height: 30,
                                  color: c15,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: const Text("Process Payment",
                                  style: TextStyle(
                                    color: c7,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                            ],
                          ),
                        ),
      ),
    );
  }
}