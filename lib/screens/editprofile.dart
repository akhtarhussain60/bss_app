import 'package:bss_app/screens/resetpassword.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

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
            title: const Text("EDIT PROFILE",
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
                width: MediaQuery.of(context).size.width,
               height:MediaQuery.of(context).size.height*0.9,
               decoration: const BoxDecoration(
            color: c31,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                      Container(
                          alignment: Alignment.center,
                          height: 57,
                          margin: const EdgeInsets.only(top: 20 ,left: 15 ,right: 15),
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
                           hintText: " Adam Sander",
                           hintStyle: TextStyle(
                            color: c8,
                            fontSize: 14,
                           ),
                            prefixIcon:Icon(Icons.person,
                            size: 23,
                            color: c15,),
                            )
                           ), 
                          ),
                          Container(
                          alignment: Alignment.center,
                          height: 57,
                          margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
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
                           hintText: " adamsander@gmail.com",
                           hintStyle: TextStyle(
                            color: c8,
                            fontSize: 14,
                           ),
                            prefixIcon:Icon(Icons.email,
                            size: 23,
                            color: c15,)
                            )
                           ), 
                          ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 20 ,left: 15,right: 15),
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
                               fontFamily: 'Montserrat',
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
                          flagsButtonPadding: const EdgeInsets.only(left: 30),
                          onChanged: (phone) {
                         print(phone.completeNumber);
                       },
                      ),
                         ),
                          Container(
                          alignment: Alignment.center,
                          height: 57,
                          margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
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
                           hintText: " 12.11.2000",
                           hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: c8
                           ),
                            prefixIcon:Icon(Icons.calendar_month_outlined,
                            size: 23,
                            color: c15,)
                            )
                           ), 
                          ),
                        Container(
                           margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
                           decoration: BoxDecoration(
                           color: c7 ,
                           borderRadius: BorderRadius.circular(30),
                           boxShadow: const [
                           BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.4
                           )
                          ]
                         ), 
                         child: Theme(
                           data: Theme.of(context).copyWith(dividerColor: c16),
                            child: ExpansionTile(
                              iconColor: c15,
                              textColor: c15,
                              tilePadding: const EdgeInsets.only(left: 17,right: 25),
                               leading: Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Image.asset("assets/images/Path 2509.png"),
                               ),
                                  title: const Text("Male",
                                  style: TextStyle(
                                  fontSize: 14,
                                  ),
                                  ),
                           ),
                         ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordScreen(),
                              )
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 57,
                            margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
                            padding: const EdgeInsets.only(left:35),
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
                            child:const Row(
                              children: [
                                Icon(Icons.lock,
                                color: c15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text("Reset Password",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: c8,
                                   ),
                                  ),
                                ),
                              ],
                             ),
                            ),
                          ),
                          Container(
                           margin: const EdgeInsets.only(left: 15,right: 15,top: 20),
                            child: MaterialButton(
                             shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40))),
                               minWidth: MediaQuery.of(context).size.width,
                                color: c15,
                                 height: 55,
                                 splashColor: c22,
                                  onPressed: (){
                                   Navigator.pop(context);
                                 },
                                  child: const Text("SAVE",
                                  style: TextStyle(
                                   fontSize: 15,
                                    color: c7,
                                     fontWeight: FontWeight.bold
                                    ),
                                   ),
                                  ),
                                ),
                               const SizedBox(height: 15)
                             ],
                          ),
                       ) ,
                   ),
          ],
        )    
      ),
    );
  }
}