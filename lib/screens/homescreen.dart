import 'package:bss_app/screens/bookingscreen.dart';
import 'package:bss_app/screens/filterscreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List shoplist = [
    {
      "img" : "assets/images/place.png",
      "img2" : "assets/images/chairlog.png",
      "img3" : "assets/images/chairlogg.png",
      "icon" : Icons.favorite,
      "text" : "Black Shadow",
      "text2" : "\$50/DAY",
      "subtittle" : "Texas, USA",
      "subtittle2" : "150 Review",
    },
     {
      "img" : "assets/images/white.png",
      "img2" : "assets/images/chairlog.png",
      "img3" : "assets/images/chairlogg.png",
      "icon" : Icons.favorite,
      "text" : "White House",
      "text2" : "\$50/DAY",
      "subtittle" : "Texas, USA",
      "subtittle2" : "150 Review",
    },
      {
      "img" : "assets/images/whites.jpg",
      "img2" : "assets/images/chairlog.png",
      "img3" : "assets/images/chairlogg.png",
      "icon" : Icons.favorite,
      "text" : "Whites Modern",
      "text2" : "\$50/DAY",
      "subtittle" : "Texas, USA",
      "subtittle2" : "150 Review",
    }
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
        actions:const [
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: Icon(Icons. notifications,size: 20,),
          )
        ],
        centerTitle: true,
         title: const Padding(
           padding: EdgeInsets.only(left: 40),
           child: Column(
            children: [
              SizedBox(height: 20,),
              Text("HELLO, ADAM SANDER",
              style: TextStyle(
               fontSize: 14 ,
               fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(Icons.location_on,size: 18),
                 Text("  Texas, USA", 
                 style: TextStyle(
                 fontSize: 13,
                 fontWeight: FontWeight.w400
                 ),
                ),
               ],
              ),
            ],
          ),
        ),
      ),
        
        body: Stack(
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
              height: 45,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 105 ,left: 15 ,right: 15),
              padding: const EdgeInsets.only(left:15, right: 10),
              decoration:  BoxDecoration(
              color:c7,
              borderRadius: BorderRadius.circular(30),
              boxShadow:const [
             BoxShadow(
              color: c12,
              blurRadius: 0.9,
              spreadRadius: 0.4
              )
            ]
          ),
              child: TextField(
              decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search Salons",
              hintStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: c20,
            ),
              prefixIcon:const Icon(Icons.search,
              size: 20,
              color: c14,),
              suffixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                   context,
                    MaterialPageRoute(
                     builder: (context) => const FilterScreen())
                    );
                },
                child: const Icon(Icons.filter_alt_sharp,
                size: 20,
                color: c14,
                ),
              ),
             ),
            ), 
           ),
           Container(
            margin: const EdgeInsets.only(top: 185),
            height: MediaQuery.of(context).size.height*0.8,
             width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30)),
                color: c31
            ),
            child: SingleChildScrollView(
             physics: const BouncingScrollPhysics(),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 const SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text("POPULAR NEAR BY",
                     style: TextStyle(
                      fontSize: 15,
                       fontWeight: FontWeight.bold,
                        color: c14,
                    ),
                                   ),
                  ),
                 const SizedBox(height: 15),
                 SingleChildScrollView(
                   scrollDirection:Axis.horizontal,
                   physics: const BouncingScrollPhysics(),
                   child: Row(
                     children: List.generate(shoplist.length, (index) =>    Stack(
                         children: [
                          Container(
                             margin: const EdgeInsets.only(left: 20,right: 20),
                            height: 235,
                            width: 220,
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
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(shoplist[index]["img"]),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20 , top: 5),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(shoplist[index]["text"],
                                    style: const TextStyle(
                                      color: c14,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 20 , top: 5),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(shoplist[index]["subtittle"],
                                    style: const TextStyle(
                                    fontSize: 11,
                                    color: c14,
                                     ),
                                    ),
                                  ),
                                 ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20 ,top: 5),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(shoplist[index]["subtittle2"],
                                      style: const TextStyle(
                                       fontSize: 10,
                                       color: c14 
                                      ),
                                      ),
                                    ),
                                    ),
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 42 ,right: 42 ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(shoplist[index]["img2"],
                                          scale: 8,
                                          ),
                                          Image.asset(shoplist[index]["img2"],
                                          scale: 8,
                                          ),
                                          Image.asset(shoplist[index]["img2"],
                                          scale: 8,
                                          ),
                                          Image.asset(shoplist[index]["img3"],
                                          scale: 8,
                                          ),
                                          Image.asset(shoplist[index]["img3"],
                                          scale: 8,
                                          ),
                                        ],
                                      ),
                                    )
                              ],
                            ),
                           ),
                           Container(
                             margin: const EdgeInsets.only(left: 120 ,top: 10),
                             height: 45,
                             width: 110,
                             decoration: BoxDecoration(
                              color: c15,
                              borderRadius: BorderRadius.circular(30)
                             ),
                             child:  GestureDetector(
                              onTap: () => Navigator.push(context,
                               MaterialPageRoute(
                                builder: (context) => const BookingScreen(),
                                )
                               ),
                               child: Center(
                                 child: Text(shoplist[index]["text2"],
                                 style: const TextStyle(
                                   fontSize: 16,
                                   color: c7,
                                   fontWeight: FontWeight.bold
                                  ),
                                 ),
                               ),
                             ),
                           ),
                           Container(
                             margin: const EdgeInsets.only(left: 180,top: 160),
                             child: Icon(shoplist[index]["icon"],
                             color: c15,
                             size: 30,
                            ),
                           ),
                         ],
                       ),
                      ),
                   ),
                 ),
                 
                 Container(
                   alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20,top: 15),
                   child: const Text("RECENTLY ADDED",
                   style: TextStyle(
                    fontSize: 16,
                    color: c14,
                    fontWeight: FontWeight.bold
                    ),
                   ),
                  ),
                  Column(
                    children: List.generate(shoplist.length, (index) =>  
                   Stack(
                       children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          height: 300,
                          width: 320,
                          decoration: BoxDecoration(
                            color: c7,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                              color: c12,
                               blurRadius: 0.9,
                                spreadRadius: 0.5
                              )
                            ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 210,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(shoplist[index]["img"])
                                 )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20 , top: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(shoplist[index]["text"],
                                  style: const TextStyle(
                                    color: c14,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(shoplist[index]["subtittle"],
                                  style: const TextStyle(
                                  fontSize: 11,
                                  color: c14,
                                   ),
                                  ),
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(shoplist[index]["subtittle2"],
                                    style: const TextStyle(
                                     fontSize: 10,
                                     color: c14 
                                    ),
                                    ),
                                  ),
                                ),
                                  const SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90 ,right: 90 ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(shoplist[index]["img3"],
                                        scale: 8,
                                        ),
                                        Image.asset(shoplist[index]["img3"],
                                        scale: 8,
                                        ),
                                        Image.asset(shoplist[index]["img3"],
                                        scale: 8,
                                        ),
                                        Image.asset(shoplist[index]["img3"],
                                        scale: 8,
                                        ),
                                        Image.asset(shoplist[index]["img3"],
                                        scale: 8,
                                        ),
                                      ],
                                    ),
                                  )
                            ],
                          ),
                         ),
                         Container(
                           margin: const EdgeInsets.only(left: 200 ,top: 30),
                           height: 45,
                           width: 110,
                           decoration: BoxDecoration(
                            color: c15,
                            borderRadius: BorderRadius.circular(30)
                           ),
                           child: GestureDetector(
                            onTap: () => Navigator.push(context,
                             MaterialPageRoute(
                               builder: (context) => const BookingScreen(),
                                )
                              ),
                             child: Center(
                               child: Text(shoplist[index]["text2"],
                               style: const TextStyle(
                                 fontSize: 16,
                                 color: c7,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ),
                           ),
                         ),
                         Container(
                           margin: const EdgeInsets.only(left: 260,top: 240),
                           child: Icon(shoplist[index]["icon"],
                           color: c15,
                           size: 30,
                           ),
                         ),
                       ],
                     ),
                     ),
                    ),
                    const SizedBox(height: 20,)
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