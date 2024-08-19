import 'package:bss_app/screens/bottom_navigation.dart';
import 'package:bss_app/screens/forgetpassword.dart';
import 'package:bss_app/screens/whoareyou.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
     body:  Stack(
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
           child: Column(
            children: [
              Container(
                 height: 380,
                width: MediaQuery.of(context).size.width ,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                topRight: Radius.circular(40))
               ),
               child: Column(
                children:[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 40,top: 35),
                    child: const Text("Sign In",
                    style: TextStyle(
                    fontSize: 25,
                    color: c8,
                    fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  Form(
                    child: Column(
                     children: [
                      Container(
                        height: 55,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(left: 15,right: 15,top: 28),
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
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(left: 15,right: 15,top: 25),
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
                         hintText: "     Password",
                         hintStyle: TextStyle(
                         color: c20, 
                         ),
                          prefixIcon:Icon(Icons.lock,
                          color: c15,
                          size: 20,)
                          )
                         ), 
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context)=> const ForgetPasswordScreen()
                              )
                             );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 130,top:15),
                            child: const Text("Forgot Password?",
                            style: TextStyle(
                             color: c14,
                             fontSize: 15, 
                            ),
                            ),
                          ),
                        ),
                          Container(
                            margin: const EdgeInsets.only(left: 15,right: 15,top: 20),
                            child: MaterialButton(
                               shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                               minWidth:MediaQuery.of(context).size.width,
                               color: c15,
                               splashColor: c22,
                               height: 55,
                              onPressed: (){
                                Navigator.pushAndRemoveUntil(
                                  context,
                                   MaterialPageRoute(
                                    builder: (context) => BottomNavigationScreen(tabindex: 0),
                                     ), 
                                    (route) => false);
                              },
                               child: const Text("SIGN IN",
                               style: TextStyle(
                               fontSize: 15,
                              color: c7,
                              fontWeight: FontWeight.bold
                               ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                color: c14
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                   MaterialPageRoute(
                                    builder: (context) => const WhoAreYouOne()
                                    )
                                   );
                                },
                                child: const Text(" Sign up",
                                style: TextStyle(
                                color: c15,
                                fontSize: 15,
                                fontWeight: FontWeight.bold  
                                ),
                                ),
                              )
                            ],
                          )
                      ],
                      ),
                    )
                ],
               ),
              )
            ],
           ),
          )   
      
       ], 
      ), 
     ),
    );
  }
}