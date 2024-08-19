import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  
  List review = [
    {
      "image" : "assets/images/img2.png",
      "t1" : "Jenny Anne",
      "Icon" : Icons.star,
      "t2" : "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy"
    },
    {
      "image" : "assets/images/img2.png",
      "t1" : "Merry Jane",
      "Icon" : Icons.star,
      "t2" : "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy"
    },
    {
      "image" : "assets/images/img2.png",
      "t1" : "Kevin Silva",
      "Icon" : Icons.star,
      "t2" : "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy"
    },
    {
      "image" : "assets/images/img2.png",
      "t1" : "Alisha Jill",
      "Icon" : Icons.star,
      "t2" : "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy"
    },
  ];

  double rating = 0;

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
            title: const Text("REVIEW",
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
                 child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                   child: Column(
                   children: [
                  Row(
                   children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 30 ,left: 50),
                    child: Text(
                      "$rating",
                    style: const TextStyle(
                     fontSize: 40
                    ),
                    ),
                                 ),
                                 Column(
                    children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40,top: 25),
                     child: RatingBar.builder(
                      itemSize: 20,
                      minRating: 0,
                      itemBuilder: ((context, index) => const Icon(Icons.star , color:c26 ,)) , 
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(top: 10 ,left: 40),
                     child: Text("From 30 Peoples",
                     style: TextStyle(
                      fontSize: 12,
                      color: c19,
                     ),
                     ),
                   )
                    ],
                                 )
                               ],
                             ),
                             const SizedBox(height: 17),
                             Column(
                               children: [
                                 Container(
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: c7,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: c12,
                          blurRadius: 0.9,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              "assets/images/img2.png",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            const Padding(
                              padding: EdgeInsets.only(top: 20,left: 10),
                              child: Text("Jenny Anne",
                              style: TextStyle(
                               fontSize: 15,
                               color: c8,
                               fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 3),
                              child: RatingBar.builder(
                          itemSize: 12,
                          minRating: 0,
                          itemBuilder: ((context, index) => const Icon(Icons.star , color:c26 ,)) , 
                          onRatingUpdate: (rating) => setState(() {
                              this.rating = rating;
                          }),
                         ),
                        ),
                         const Padding(
                           padding: EdgeInsets.only(left: 10,top: 3),
                           child: Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy",
                           style: TextStyle(
                            fontSize: 11,
                            color: c19,
                            fontWeight: FontWeight.bold
                           ),
                           ),
                          )
                          ],
                        )
                      ],
                    ),
                                 ),
                               ],
                             ),
                             Container(
                               height: 100,
                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 color: c7,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [
                    BoxShadow(
                      color: c12,
                      blurRadius: 0.9,
                      spreadRadius: 0.5,
                    )
                                 ]
                               ),
                               child: Row(
                                 children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/img4.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const Padding(
                          padding: EdgeInsets.only(top: 20,left: 10),
                          child: Text("Merry Jane",
                          style: TextStyle(
                           fontSize: 15,
                           color: c8,
                           fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 3),
                          child: RatingBar.builder(
                      itemSize: 12,
                      minRating: 0,
                      itemBuilder: ((context, index) => const Icon(Icons.star , color:c26 ,)) , 
                      onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                      }),
                     ),
                        ),
                     const Padding(
                       padding: EdgeInsets.only(left: 10,top: 3),
                       child: Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy",
                       style: TextStyle(
                        fontSize: 11,
                        color: c19,
                        fontWeight: FontWeight.bold
                       ),
                       ),
                      )
                      ],
                    )
                                 ],
                               ),
                             ),
                             Container(
                               height: 100,
                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 color: c7,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [
                    BoxShadow(
                      color: c12,
                      blurRadius: 0.9,
                      spreadRadius: 0.5,
                    )
                                 ]
                               ),
                               child: Row(
                                 children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/Ellipse 277.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const Padding(
                          padding: EdgeInsets.only(top: 20,left: 10),
                          child: Text("Kevin Silva",
                          style: TextStyle(
                           fontSize: 15,
                           color: c8,
                           fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 3),
                          child: RatingBar.builder(
                      itemSize: 12,
                      minRating: 0,
                      itemBuilder: ((context, index) => const Icon(Icons.star , color:c26 ,)) , 
                      onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                          },
                        ),
                      ),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(left: 10,top: 3),
                       child: Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy",
                       style: TextStyle(
                        fontSize: 11,
                        color: c19,
                        fontWeight: FontWeight.bold
                        ),
                       ),
                      )
                     ],
                    )
                                 ],
                               ),
                             ),
                             Container(
                               height: 100,
                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 color: c7,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [
                    BoxShadow(
                      color: c12,
                      blurRadius: 0.9,
                      spreadRadius: 0.5,
                    )
                                 ]
                               ),
                               child: Row(
                                 children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/Ellipse 290.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const Padding(
                          padding: EdgeInsets.only(top: 20,left: 10),
                          child: Text("Alisha Jill",
                          style: TextStyle(
                           fontSize: 15,
                           color: c8,
                           fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 3),
                          child: RatingBar.builder(
                      itemSize: 12,
                      minRating: 0,
                      itemBuilder: ((context, index) => const Icon(Icons.star , color:c26 ,)) , 
                      onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                      }),
                     ),
                        ),
                     const Padding(
                       padding: EdgeInsets.only(left: 10,top: 3),
                       child: Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy",
                       style: TextStyle(
                        fontSize: 11,
                        color: c19,
                        fontWeight: FontWeight.bold
                       ),
                       ),
                      )
                      ],
                    )
                                 ],
                               ),
                             ),
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