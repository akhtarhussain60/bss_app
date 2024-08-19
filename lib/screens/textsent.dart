import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

  enum SampleItem {ItemOne, ItemTwo, ItemThree}

class TextSentScreen extends StatefulWidget {
  const TextSentScreen({super.key});

  @override
  State<TextSentScreen> createState() => _TextSentScreenState();
}

class _TextSentScreenState extends State<TextSentScreen> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: c7,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
                      margin: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(
                      color: c15,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                    BoxShadow(
                      color: c12,
                      blurRadius: 0.9,
                      spreadRadius: 0.4
                     ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(Icons.arrow_back,
                    size: 18,
                    ),
                  ),
                ),
          ),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(left: 55,),
                child: Row(
                  children: [
                    Image.asset("assets/images/Ellipse 277.png",
                    scale: 6.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("JENNY",
                          style: TextStyle(
                           fontSize: 13,
                           color: c11,
                           fontWeight: FontWeight.w500 
                           ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text("Online",
                            style: TextStyle(
                             fontSize: 10,
                             color: c19
                            ),
                         ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              actions: [
               PopupMenuButton(
                icon: const Icon(Icons.more_vert,
                color: c15,
                ),
                color: c30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                initialValue: selectedMenu,
                onSelected: (SampleItem item){
                  setState(() {
                    selectedMenu = item;
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            const PopupMenuItem<SampleItem>(
              value: SampleItem.ItemOne,
              child: Text('Item 1'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.ItemTwo,
              child: Text('Item 2'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.ItemThree,
              child: Text('Item 3'),
            ),
          ],
                )
              ],
        ),
        body: Container(
          color: c31,
            padding: const EdgeInsets.only(bottom: 30 ,left: 20 ,right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Ellipse 277.png",
                  scale: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Today 5:20 pm",
                        style: TextStyle(
                          fontSize: 8
                        ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 30,
                          width: 160,
                          decoration: const BoxDecoration(
                            color: c7,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.5
                              )
                            ]
                          ),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("    Can I book today ?",
                            style: TextStyle(
                              fontSize: 10,
                              color: c14
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Today 5:20 pm",
                    style: TextStyle(
                      fontSize: 10,
                      color: c14
                    ),
                    ),
                     Container(
                            height: 30,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: c15,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: c12,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.5
                                )
                              ]
                            ),
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: Text("    Sure , We have space for rent        ",
                              style: TextStyle(
                                fontSize: 10,
                                color: c7
                              ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/Ellipse 277.png",
                  scale: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Today 5:20 pm",
                        style: TextStyle(
                          fontSize: 8
                        ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 80,
                          width: 190,
                          decoration: const BoxDecoration(
                            color: c7,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.5
                              )
                            ]
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("    Hey there,\n    Please provide the necessary data so\n    that I will start development. I would\n    hardly take 1-2 weeks to complete",
                            style: TextStyle(
                              fontSize: 10,
                              color: c14
                            ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                           const Text("Today 5:20 pm",
                           style: TextStyle(
                            fontSize: 10,
                           color: c14
                          ),
                           ),
                             Container(
                              height: 30,
                              width: 180,
                              decoration: const BoxDecoration(
                                color: c15,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: c12,
                                    blurRadius: 0.9,
                                    spreadRadius: 0.5
                                  )
                                ]
                              ),
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text("    Sure , I will share it by tonight        ",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: c7
                                ),
                                ),
                              ),
                            ),
                          ],
                           ),
               ),
               const SizedBox(height: 15),
               Row(
                children: [
                  Image.asset("assets/images/Ellipse 277.png",
                  scale: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Today 5:20 pm",
                        style: TextStyle(
                          fontSize: 8
                        ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 30,
                          width: 160,
                          decoration: const BoxDecoration(
                            color: c7,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: c12,
                                blurRadius: 0.9,
                                spreadRadius: 0.5
                              )
                            ]
                          ),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("    Thanks. I will do that then",
                            style: TextStyle(
                              fontSize: 10,
                              color: c14
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                           const Text("Today 5:20 pm",
                           style: TextStyle(
                            fontSize: 10,
                           color: c14
                          ),
                           ),
                             Container(
                              height: 30,
                              width: 180,
                              decoration: const BoxDecoration(
                                color: c15,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: c12,
                                    blurRadius: 0.9,
                                    spreadRadius: 0.5
                                  )
                                ]
                              ),
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text("    Let me know when you complete        ",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: c7
                                ),
                                ),
                              ),
                            ),
                          ],
                           ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Image.asset("assets/images/Ellipse 277.png",
                            scale: 16.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Image.asset("assets/images/more.png",
                              color: c12,
                              ),
                            ),
                          ],
                        ),
              const SizedBox(height: 17),
          
            ],
          ),
        ),
     
               bottomSheet:  Container(
                alignment: Alignment.center,
                height: 55,
                margin:  const EdgeInsets.all(10),
                decoration: BoxDecoration(
                 color: c7,
                 border: Border.all(
                  color: c15,
                  width: 1
                 ),
                 borderRadius: BorderRadius.circular(30),
                 boxShadow: const [
                  BoxShadow(
                    color: c12,
                    blurRadius: 0.9,
                    spreadRadius: 0.7
                  )
                 ]
                ),
              child:
                   Row(
                     children: [
                       Expanded(
                         child: Container(
                          padding: const EdgeInsets.all(12),
                          child:   const TextField(
                            style: TextStyle(fontSize: 16),
                            cursorColor: c15,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a Message",
                              hintStyle: TextStyle(
                               fontSize: 14,
                               color: c14
                              ),
                            ),
                          ),
                                         ),
                       ),
                   
                   IconButton(onPressed: () {
                     
                   }, icon: const Icon(Icons.pin),
                   ),
                    IconButton(onPressed: () {
                     
                   }, icon: const Icon(Icons.mic_none,
                   color: c14,
                   )),
                    IconButton(onPressed: () {
                     
                   }, icon: const Icon(Icons.arrow_forward,
                   color: c9,
                   )),
                     ]
                     ,
                   ),
              ),
           
      ),
    );
  }
}