import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {

  List barbershop = [
    {
      "image" : "assets/images/place.png",
      "t1" : "Black Shadow",
      "t2" : "Texas, USA",
      "t3" : "14.11.2020",
      "t4" : "Amount: \$50",
      "t5" : "Pendind",
    },
    {
      'image' : 'assets/images/white.png',
      't1' : 'White Shadow',
      't2' : "Texas, USA",
       't3' : '14.11.2020',
       't4' : 'Amount: \$50',
      't5' : 'Pending',
    },
    {
      'image' : 'assets/images/whites.jpg',
      't1' : 'Whites Shadow',
      't2' : 'Texas, USA',
      't3' : '14.11.2020',
      't4' : 'Amount: \$50',
      't5' : 'Pending',
    },
    
  ];

  String dropdownvalue = "Pending";

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
       backgroundColor: bigicolor,
       extendBodyBehindAppBar: true,
       appBar: AppBar(
          elevation: 0,
          backgroundColor: c22,
          centerTitle: true,
          title: const Text("RESERVATIONS",
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
       body:Stack(
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
        decoration:  const BoxDecoration(
          color: c31,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10,),
                              alignment: Alignment.center,
                              child: Material(
                                elevation: 2.0,
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15.0)),
                                child: Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "YOUR RESERVATIONS",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      const Text(
                                        "Pending",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:c19,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.keyboard_arrow_down),
                                        onPressed: () => showDialog(
                                          context: context,
                                          builder: (
                                            BuildContext context,
                                          ) =>
                                          Container(
                                            margin: const EdgeInsets.only(top: 60,right: 20,left: 90,bottom: 60),
                                            alignment: Alignment.center,
                                            child: AlertDialog(
                                              alignment: Alignment.topRight,
                                              insetPadding: const EdgeInsets.only(
                                                  left: 125, top: 130),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12)),
                                              elevation: 1,
                                              backgroundColor: c31,
                                              content: const Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Confirmed',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: c19,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'Cancelled',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:c19,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                         Column(
                          children: List.generate(barbershop.length, (index) =>
                         Container(
                            height: 150,
                            margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                            decoration: const BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                             color: c7,
                             boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.5
                              )
                             ]
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                Container(
                                  height: 135,
                                  width: 130,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage(barbershop[index]['image'],
                                  ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(barbershop[index]['t1'],
                                    style: const TextStyle(
                                     fontSize: 19,
                                     fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text(barbershop[index]['t2']),
                                    Text(barbershop[index]['t3']),
                                    Text(barbershop[index]['t4']),
                                     MaterialButton(
                                      shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(40))),
                                      minWidth: 130,
                                     color: c15,
                                     splashColor: c22,
                                       height: 35,
                                    onPressed: (){},
                                      child: Text(barbershop[index]['t5'],
                                      style: const TextStyle(
                                         color: c7,
                                      fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                     ),
                                  ],
                                )
                              ],
                            ),
                         )
                        )
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