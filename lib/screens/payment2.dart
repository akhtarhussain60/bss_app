
import 'package:bss_app/screens/addpaymentscreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class PaymentScreenTwo extends StatefulWidget {
  const PaymentScreenTwo({super.key});

  @override
  State<PaymentScreenTwo> createState() => _PaymentScreenTwoState();
}

class _PaymentScreenTwoState extends State<PaymentScreenTwo> {
  
  bool? click= false;
  
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
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30))
              ),
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20 ,right: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          const Text("\$423.00",
                          style: TextStyle(
                           fontSize: 40,
                           fontWeight: FontWeight.w500,
                          ),
                        ),
                          const SizedBox(height: 30),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text("CARD NUMBER",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: c14
                            ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                 color: c7,
                                 border: Border.all(
                                  color: c8,
                                  width: 0.5
                                 ),
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: const [
                                  BoxShadow(
                                   color: c12,
                                   blurRadius: 0.9,
                                   spreadRadius: 0.5
                                  ),
                                 ],
                                ),
                                child:  TextFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "   1234      5678      3456      2456",
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: c14,
                                      fontWeight: FontWeight.w500
                                    )
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: c7,
                                  border: Border.all(
                                    color: c8,
                                    width: 0.5,
                                  ),
                                  image: const DecorationImage(
                                    colorFilter: ColorFilter.mode(c22,BlendMode. dst),
                                    scale: 7,
                                    image: AssetImage("assets/images/visa1.png",
                                    )
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: c12,
                                      blurRadius: 0.9,
                                      spreadRadius: 0.5
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text("CARDHOLDER NAME",
                            style: TextStyle(
                             fontSize: 10,
                             color: c14,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: 320,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: c8,
                                width: 0.5,
                              ),
                              color: c7,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: c12,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.5
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "   Adam Sander",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: c14,
                                  fontWeight: FontWeight.w500
                                )
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("EXPIRE DATE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: c14,
                                    fontWeight: FontWeight.w500
                                  ), 
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                     height: 50,
                                     width: 110,
                                     decoration: BoxDecoration(
                                      color: c7,
                                      border: Border.all(
                                        color: c8,
                                        width: 0.5
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5,
                                        )
                                      ]
                                     ),
                                     child:TextFormField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "     05   /    21",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: c14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                     ),
                                  ),
                                  
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("CVV",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: c14,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Container(
                                        height: 50,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: c7,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: c8,
                                            width: 0.5
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: c12,
                                              blurRadius: 0.9,
                                              spreadRadius: 0.5
                                            )
                                          ]
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "     123",
                                            hintStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: c14
                                            )
                                          ),
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Checkbox(
                                  value: click, 
                                  activeColor: c15,
                                  onChanged:(newBool){
                                    setState(() {
                                      click = newBool;
                                    });
                                  }
                                ),
                              ),
                              const Text("Save Card",
                              style: TextStyle(
                                fontSize: 12,
                                color: c14,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                          
                ],
              ),
            ),
          ],
        ),
        bottomSheet:  Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                             color: c7,
                             boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.8 
                              )
                             ] 
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("\$50/DAYS",
                                style: TextStyle(
                                 fontSize: 14,
                                 color: c14,
                                 fontWeight: FontWeight.w500
                                ),
                                ),
                                MaterialButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const AddPaymentMethod(),)
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
                          )
      ),
    );
  }
}