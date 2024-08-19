import 'package:bss_app/screens/signinscreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
   const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

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
            const AssetImage("assets/images/screen2.png",
            ),
            fit: BoxFit.cover,
           ),
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
                height:380,
                width: MediaQuery.of(context).size.width ,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                topRight: Radius.circular(40))
               ),
               child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 40,top: 40),
                    child: const Text("Welcome!",
                    style: TextStyle(
                      color: c8,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40,top: 10),
                    alignment: Alignment.topLeft,
                    child: const Text("Easy way find and manage your available \nrental space",
                    style: TextStyle(
                     fontSize: 15,
                     fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                 Container(
                  margin: const EdgeInsets.only(top: 25,left: 20 ,right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                   child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: const EdgeInsets.only(left: 30),
                      alignment: Alignment.centerLeft,
                      backgroundColor: c15,
                      textStyle: const TextStyle(
                      fontWeight: FontWeight.bold  
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                     ) 
                    ),
                    onPressed: (){},
                    label: const Text ("     Sign up with email",
                    ),
                    icon:Image.asset("assets/images/email.png",
                    scale: 5,)
                    ),
                 ),
                 Container(
                  margin: const EdgeInsets.only(top: 15,left: 20,right: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                   child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: const EdgeInsets.only(left: 35),
                      alignment: Alignment.centerLeft,
                      backgroundColor: c35,
                      textStyle: const TextStyle(
                      fontWeight: FontWeight.bold  
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                     ) 
                    ),
                    onPressed: (){},
                    label: const Text ("     Connect with facebook",
                    ),
                    icon:Image.asset("assets/images/fb.png",
                    scale: 5,
                    )
                    ),
                 ),
                 Container(
                  margin: const EdgeInsets.only(top: 15,left: 20,right: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                   child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      splashFactory: NoSplash.splashFactory,
                      padding: const EdgeInsets.only(left: 30 ),
                      alignment: Alignment.centerLeft,
                      backgroundColor: c21,
                      textStyle: const TextStyle(
                      fontWeight: FontWeight.bold  
                      ),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                     ),
                    ),
                    onPressed: (){},
                    label:  const Text ("     Connect with google",
                    ),
                    icon: Image.asset("assets/images/google.png",
                    scale:5,),)
                    ),
                   const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      const Text("Already have an account?",
                        style: TextStyle(
                        color: c11,  
                        ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                               MaterialPageRoute(
                                builder:(context)=> const SignInScreen())
                               );
                          },
                          child: const Text(" Sign In",
                          style: TextStyle(
                          color: c15,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold  
                          ),
                          ),
                        )
                      ],
                    )
                ],
               ),
               )
            ]
           ),
          )   
       ], 
      ),
     ),
    );
  }
}