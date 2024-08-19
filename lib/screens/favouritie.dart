import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class FavouritieScreen extends StatefulWidget {
  const FavouritieScreen({super.key});

  @override
  State<FavouritieScreen> createState() => _FavouritieScreenState();
}

class _FavouritieScreenState extends State<FavouritieScreen> {
  
  List barbershop = [
    {
      "image" : "assets/images/place.png",
      'image2' : 'assets/images/chairlogg.png',
      "t1" : "\$50/DAYS",
      "t2" : "Black Shadow",
      "t3" : "Texas, USA",
      "t4" : "150 Reviews",
      "t5" : "Edit",
      "t6" : "Remove",
      "icon2" : Icons.favorite,
    },
    {
      "image" : "assets/images/white.png",
      'image2' : 'assets/images/chairlogg.png',
      "t1" : "\$50/DAYS",
      "t2" : "Black Shadow",
      "t3" : "Texas, USA",
      "t4" : "150 Reviews",
      "t5" : "Edit",
      "t6" : "Remove",
      "icon" : Icons.favorite,
    },
    {
      "image" : "assets/images/whites.jpg",
      'image2' : 'assets/images/chairlogg.png',
      "t1" : "\$50/DAYS",
      "t2" : "Black Shadow",
      "t3" : "Texas, USA",
      "t4" : "150 Reviews",
      "t5" : "Edit",
      "t6" : "Remove",
      "icon" : Icons.favorite,
    },
    {
      "image" : "assets/images/slider2.jpg",
      'image2' : 'assets/images/chairlogg.png',
      "t1" : "\$50/DAYS",
      "t2" : "Black Shadow",
      "t3" : "Texas, USA",
      "t4" : "150 Reviews",
      "t5" : "Edit",
      "t6" : "Remove",
      "icon" : Icons.favorite,
    },
    {
      "image" : "assets/images/slider3.jpg",
      'image2' : 'assets/images/chairlogg.png',
      "t1" : "\$50/DAYS",
      "t2" : "Black Shadow",
      "t3" : "Texas, USA",
      "t4" : "150 Reviews",
      "t5" : "Edit",
      "t6" : "Remove",
      "icon" : Icons.favorite,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: bigicolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: c22,
          centerTitle: true,
          title: const Text("SAVED",
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
         body: 
             Stack(
              children: [
            Container(
              width: 230,
              decoration: const BoxDecoration(
               image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/BG.png",
               )),
               borderRadius: BorderRadius.only(topRight: Radius.circular(160))
              ),
                ),
        Container(
          height: MediaQuery.of(context).size.height*0.8,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 120),
          decoration: const BoxDecoration(
          color: c31,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30)),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(barbershop.length, (index) =>
              Container(
                height: 280,
                width: 320,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: c7,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:  const [
                   BoxShadow(
                    color: c12,
                    blurRadius: 0.9,
                    spreadRadius: 0.5
                   )
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 160,
                            width: 320,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(barbershop[index]["image"])
                              )
                            ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20 ,top: 5),
                            child: Text(barbershop[index]["t2"],
                            style: const TextStyle(
                            color: c14,
                            ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(barbershop[index]["t3"],
                            style: const TextStyle(
                            color: c14,
                            fontSize: 11
                            ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20 ,top: 5),
                            child: Text(barbershop[index]["t4"],
                            style: const TextStyle(
                            color: c14,
                            fontSize: 11
                            ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(barbershop[index]['image2'],
                              scale: 8.5,
                              color: c14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.asset(barbershop[index]['image2'],
                                scale: 8.5,
                                color: c14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.asset(barbershop[index]['image2'],
                                scale: 8.5,
                                color: c14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.asset(barbershop[index]['image2'],
                                scale: 8.5,
                                color: c14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.asset(barbershop[index]['image2'],
                                scale: 8.5,
                                color: c14,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 190 , top: 5),
                      height: 45,
                       width: 110,
                       decoration: BoxDecoration(
                        color: c15,
                        borderRadius: BorderRadius.circular(30)
                       ),
                       child: Center(
                        child: Text(barbershop[index]["t1"],
                        style: const TextStyle(
                          fontSize: 16,
                          color: c7,
                          fontWeight: FontWeight.bold
                         ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 200 ,top: 170),
                       child: MaterialButton(
                       shape: const RoundedRectangleBorder(
                        side: BorderSide(
                         color: c20,
                          width: 1,
                        ),
                       borderRadius: BorderRadius.all(Radius.circular(40))
                       ),
                       minWidth: 100,
                       color: c7,
                       height: 35,
                       splashColor: c22,
                       onPressed: (){
                        
                        },
                       child: Text(barbershop[index]["t5"],
                       style: const TextStyle(
                       fontSize: 12,
                       color: c8,
                      ),
                     ),
                    ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(top: 218 ,left: 200),
                    child: MaterialButton(
                      height: 35,
                      minWidth: 100,
                      color: c15,
                      splashColor: c22,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                     onPressed: () {
                     },
                     child: Text(barbershop[index]["t6"],
                     style: const TextStyle(
                    fontSize: 12,
                    color: c7,
                     ),
                     ), 
                    ),
                    ),
                  ],
                ),
              ),
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