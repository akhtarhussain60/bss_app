import 'package:bss_app/screens/bottom_navigation.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AcountCreatScreen extends StatefulWidget {
  const AcountCreatScreen({super.key});

  @override
  State<AcountCreatScreen> createState() => _AcountCreatScreenState();
}

class _AcountCreatScreenState extends State<AcountCreatScreen> {

   bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      backgroundColor: c31,
      appBar: AppBar(
      elevation: 0,
      backgroundColor: c22,
      leading: GestureDetector(
      onTap: () {
      Navigator.pop(context);},
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
                     title: const Text("Create an account",
                      style: TextStyle(
                       color: c8,
                        fontSize: 23,
                         fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    body: NotificationListener<OverscrollIndicatorNotification>(
                     onNotification: (OverscrollIndicatorNotification overscroll){
                      overscroll.disallowIndicator();
                       return true;
                      },
                      child: SingleChildScrollView(
                       scrollDirection: Axis.vertical,
                        child: Container(
                         padding: const EdgeInsets.only(left: 20 ,right: 20),
                          child: Column(
                           children: [
                            Form(
                             child:Column(
                              children: [
                               Container(
                                margin: const EdgeInsets.only(top: 30),
                                 height:80,
                                  decoration: BoxDecoration(
                                   color: c7,
                                    borderRadius: BorderRadius.circular(20),
                                     boxShadow: const [
                                      BoxShadow(
                                       color: c12,
                                        blurRadius: 0.9,
                                         spreadRadius: 0.5
                                        )
                                      ],
                                    ),
                                    child: Row(
                                     children: [
                                      Container(
                                       margin: const EdgeInsets.only(left: 10),
                                        height: 70,
                                         width: 100,
                                          decoration: BoxDecoration(
                                           color: c25,
                                            borderRadius: BorderRadius.circular(18)),
                                             child: Center(
                                              child: Image.asset("assets/images/add.png",
                                               color: c15,
                                              ),
                                            ),
                                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 65),
                            child: Text("Select A Photo",
                                   style: TextStyle(
                                    fontSize: 16,
                                    color: c14
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                         Container(
                          alignment: Alignment.center,
                          height: 57,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20),
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                            BoxShadow(
                             color: c12,
                             blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                          border: InputBorder.none,
                           hintText: "     User Name",
                           hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                           color: c20,
                           ),
                            prefixIcon:Icon(Icons.person,
                            size: 17,
                            color: c15,)
                            )
                           ), 
                          ),
                          
                        Container(
                          height: 57,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20),
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                            BoxShadow(
                             color: c12,
                             blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                          ),
                          child: TextFormField(
                           textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                           border: InputBorder.none,
                           hintText: "     Email Address",
                           hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                           color: c20,
                           ),
                            prefixIcon:Icon(Icons.email,
                            size: 17,
                            color: c15,)
                            )
                           ), 
                          ),
                           const SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left:15),
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                            BoxShadow(
                             color: c12,
                             blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                          ),
                          child: IntlPhoneField(
                          decoration: InputDecoration(
                            counter: const Offstage(),
                              hintText: "| 861-2456 35",
                               hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.grey[600],
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        initialCountryCode: 'US',
                                        cursorHeight: 20,
                                        showDropdownIcon: true,
                                        dropdownIconPosition: IconPosition.trailing,
                                        dropdownIcon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.grey,
                                        ),
                                        flagsButtonPadding: const EdgeInsets.only(left: 20),
                                        onChanged: (phone) {
                                          print(phone.completeNumber);
                                        },
                                 ),
                         ),
                           const SizedBox(height: 20,),
                            const Divider(
                              height: 1,
                               color: c19,
                              indent: 25,
                             endIndent: 25,
                             ),
                        Container(
                          height: 57,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20 ),
                          alignment:Alignment.center,
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                          BoxShadow(
                           color: c12,
                            blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                        ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                            border: InputBorder.none,
                           hintText: "      Your Licence Number",
                           hintStyle: TextStyle(
                           color: c20,
                           fontSize: 14
                           ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 16 ,right: 16),
                              child: Image(
                              height: 2,
                              width: 2,
                              alignment: Alignment.centerLeft,
                              image: AssetImage(
                                "assets/images/pc2.png"),),
                            ))
                           ), 
                          ),
                         Container(
                          height: 57,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20),
                          alignment:Alignment.center,
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                          BoxShadow(
                           color: c12,
                            blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                        ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                            border: InputBorder.none,
                           hintText: "      Licence Expiration Date",
                           hintStyle: TextStyle(
                           color: c20,
                           fontSize: 14
                           ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 17 ,right: 17),
                              child: Image(
                              height: 2,
                              width: 2,
                              alignment: Alignment.centerLeft,
                              image: AssetImage(
                                "assets/images/calender.png"),),
                            ))
                           ), 
                          ),
                        Container(
                         margin: const EdgeInsets.only(top: 20),
                         height:80,
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
                        child: Row(
                         children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 100,
                               decoration: BoxDecoration(
                               color: c25,
                               borderRadius: BorderRadius.circular(18),
                               ),
                              child: Center(
                               child: Image.asset("assets/images/add.png",
                               color: c15,
                               ),
                             ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Text("Add License Photo",
                                   style: TextStyle(
                                    fontSize: 16,
                                    color: c14
                                ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                    height: 1,
                     color: c19,
                    indent: 25,
                   endIndent: 25,
                   ),
                     Container(
                          height: 57,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20,),
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                            BoxShadow(
                             color: c12,
                             blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                          border: InputBorder.none,
                           hintText: "      Your Insurance Number",
                           hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                           color: c20,
                           ),
                            prefixIcon:Icon(Icons.person,
                            size: 17,
                            color: c15,)
                            )
                           ), 
                          ),   
                            
                            Container(
                          height: 57,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left:20),
                          alignment:Alignment.center,
                          decoration:  BoxDecoration(
                          color:c7,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:const [
                          BoxShadow(
                           color: c12,
                            blurRadius: 0.9,
                             spreadRadius: 0.5
                            )
                          ]
                        ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                           decoration: const InputDecoration(
                            border: InputBorder.none,
                           hintText: "       Insurance Expiration Date",
                           hintStyle: TextStyle(
                           color: c20,
                           fontSize: 14
                           ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 17 ,right: 17),
                              child: Image(
                              height: 2,
                              width: 2,
                              alignment: Alignment.centerLeft,
                              image: AssetImage(
                                "assets/images/calender.png"),),
                            ))
                           ), 
                          ),
                          Container(
                         margin: const EdgeInsets.only(top: 20),
                         height:80,
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
                        child: Row(
                         children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 100,
                               decoration: BoxDecoration(
                               color: c25,
                               borderRadius: BorderRadius.circular(18),
                               ),
                              child: Center(
                               child: Image.asset("assets/images/add.png",
                               color: c15,
                               ),
                             ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("Add Insurance Photo",
                                   style: TextStyle(
                                    fontSize: 16,
                                    color: c14
                                ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                        const Divider(
                          height: 1,
                           color: c19,
                          indent: 25,
                         endIndent: 25,
                         ),
                          Container(
                         margin: const EdgeInsets.only(top: 20),
                         height:80,
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
                        child: Row(
                         children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 100,
                               decoration: BoxDecoration(
                               color: Colors.grey.shade200,
                               borderRadius: BorderRadius.circular(18),
                               ),
                              child: Center(
                               child: Image.asset("assets/images/add.png",
                               color: c15,
                               ),
                             ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("Add Your Goverment\nID Photo",
                                   style: TextStyle(
                                    fontSize: 16,
                                    color: c14
                                ),
                            ),
                          ),
                      ],
                    ),
                  ),
                   Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,top: 25),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("By continuing sign up you agree to the following\nour Terms & Conditions"
                        ""
                        ,
                        style: TextStyle(
                         fontSize: 10,
                        ),
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: Checkbox(
                            value: ischecked,
                            activeColor: c14,
                             onChanged:(newBool){
                              setState(() {
                                ischecked=newBool;
                              });
                             }
                            ),
                        ),
                      ],
                     ),
                   ),
                  ],
                ),
               ),
                   const SizedBox(height:10),
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                    minWidth: 320,
                    color: c15,
                    height: 50,
                    splashColor: c22,
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context,
                       MaterialPageRoute(
                        builder: (context) => BottomNavigationScreen(tabindex: 0),
                      ),
                       (route) => false);
                    },
                    child: const Text("FINISH",
                    style: TextStyle(
                    fontSize: 15,
                    color: c7,
                    fontWeight: FontWeight.bold
                    ),
                   ),
                  ),
                  const SizedBox(height: 10)
              ]
               ),
            ),
          ),
        ),
      ),
    );
  }
}