import 'package:bss_app/screens/varifyscreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}
 
class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
            image: DecorationImage(
            colorFilter: ColorFilter.mode(
            c11.withOpacity(0.7),
            BlendMode.darken
           ),
            image:
            const AssetImage("assets/images/screen2.png"),
            fit: BoxFit.cover,
           ) 
          ),
          child:   Container(
              margin: const EdgeInsets.only(left: 30,right: 30),
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/applogo.png",
             )
            ),
          ), 
          Positioned(
            bottom: 0,
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children:[
               Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width ,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                topRight: Radius.circular(40))
               ),
               child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          margin: const EdgeInsets.only(top:40 ,left: 30),
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
                                spreadRadius: 0.5
                              )
                            ]
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40 ,left: 35 ),
                        child: Text("Forgot Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 23,
                        color: c8,
                        fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Please enter your email address\nYou will recieve a code to change your password",
                  textAlign: TextAlign.center,
                  ),
                  Container(
                        height: 55,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                        alignment:Alignment.center,
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
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                         decoration: const InputDecoration(
                          border: InputBorder.none,
                         hintText: "     Email Address",
                         hintStyle: TextStyle(
                         color: c20,
                         ),
                          prefixIcon:Icon(Icons.email,
                          color: c15,
                          size: 20,)
                          )
                         ), 
                        ),
                         Container(
                          margin: const EdgeInsets.only(left: 15,right: 15,top: 30),
                           child: MaterialButton(
                            elevation: 0,
                               hoverElevation: 0,
                              focusElevation: 0,
                              highlightElevation: 0,
                               shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                               minWidth: MediaQuery.of(context).size.width,
                               color: c15,
                               height: 55,
                               onPressed: (){
                              showDialog(
                        context: context,
                     builder: (context) {
                       return Container(
                       margin: const EdgeInsets.only(left: 10 ,right: 10 ,bottom: 140 ,top: 140),
                     child: AlertDialog(
                       backgroundColor: c31,
                     shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  title: 
                const Text(
                  "Code has been sent to reset,\nYour new Password ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11, color: c14),
                 ),
                  content: Image.asset("assets/images/unlock.png"),
                  actions: [
                  Container(
                  margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                    minWidth: MediaQuery.of(context).size.width,
                    height: 48,
                    color: c15,
                    onPressed: (){
                    Navigator.pushReplacement(
                    context,
                     MaterialPageRoute(
                     builder: (context) => const CodeVarifyScreen()
                   ),
                  );
                },
                    child: const Text("DONE",
                    style: TextStyle(
                    fontSize: 14,
                    color: c7,
                    fontWeight: FontWeight.bold  
                    ),
                   ),
                  ),
                ),           
              ],
            ),
          );
        }
      );
       },
      child: const Text("REST",
        style: TextStyle(
          fontSize: 16,
            color: c7,
              fontWeight: FontWeight.bold
                ),
                  ),
                    ),
                      ),  
                        ],
                      ),
                    ),
                  ],
                ),
              )
           ],
         )
      ),
    );
  }
}