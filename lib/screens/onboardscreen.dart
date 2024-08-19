import 'package:bss_app/screens/welcomescreen.dart';
import 'package:flutter/material.dart';

import '../src/theme.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: 
       PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children:  [

        /* Screen number 1  */

      Stack(
       children: [
        Container(
          height: MediaQuery.of(context).size.height*0.9,
          width:  MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
            image: DecorationImage(
            colorFilter: ColorFilter.mode(
            c11.withOpacity(0.7),
            BlendMode.darken
           ),
            image:
            const AssetImage("assets/images/screen1.png",
            ),
            fit: BoxFit.cover,
           ),
          ),
            child:   Container(
              margin:  const EdgeInsets.only(bottom: 100,left: 30,right: 30 ),
              child: Image.asset("assets/images/applogo.png",
             )
            ),
          ),
            Positioned(
             bottom: 0,
             child: Column(
             children: [
              Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: 100,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c10,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31 ,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31,borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
              Container(
                height:210,
                width: MediaQuery.of(context).size.width ,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
               ),
                child: Column(
                children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text("YOUR SPACE, YOUR WAY!",
                style: TextStyle(
                fontSize: 23,
                color: c8,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold
               ),
              ),
             ),
              Container(
                margin: const EdgeInsets.only(top: 25 ,left: 20 ,right: 20),
                child: const Text("Beauty Salon Space helps you find, list and manage your available rental space on a temporary basis",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 14,
               ),
              ),
            ),
              const SizedBox(
               height: 25,
              ),
            //Material Button No.01
              MaterialButton(
                height: 50,
                splashColor: c22,
                minWidth: 280,
                color: c15,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                onPressed: (){
                  _controller.jumpToPage(1);
                },
                child: const Text("NEXT",
                style: TextStyle(
                fontSize: 14,
                color: c7,
                fontWeight: FontWeight.bold 
                ),
               ),
              ),
             ],
            ),
           ),
          ],
         ),
        ),
       ], 
      ),
      
    // Screen number 2

      Stack(
       children: [
        Container(
          height: MediaQuery.of(context).size.height*0.9,
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
              margin:  const EdgeInsets.only(bottom: 100,left: 30,right: 30),
              child: Image.asset("assets/images/applogo.png",
              )
            ),
          ),    
            Positioned(
             bottom: 0,
             child: Column(
             children: [
              Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: 100,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c10 ,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31,borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
              Container(
                height: 210,
                width: MediaQuery.of(context).size.width ,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
               ),
                child: Column(
                children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text("BECOME A HOST!",
                style: TextStyle(
                fontSize: 23,
                color: c8,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold
               ),
              ),
             ),
              Container(
                margin: const EdgeInsets.only(top: 25 ,left: 20 ,right: 20),
                child: const Text("Earn extra cash by listing your available space for \n FREE",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 14,
               ),
              ),
            ),
              const SizedBox(
               height: 25,
              ),
              //Material Button No.02
              MaterialButton(
                height: 50,
                minWidth: 280,
                color: c15,
                splashColor: c22,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                onPressed: (){
                  _controller.jumpToPage(2);
                }, 
                child: const Text("NEXT",
                style: TextStyle(
                fontSize: 14,
                color: c7,
                fontWeight: FontWeight.bold
                ),
               ),
              ),
             ],
            ),
           ),
          ],
         ),
        ),
       ], 
      ),
      
      Stack(
       children: [
        Container(
          height: MediaQuery.of(context).size.height*0.9,
          width:  MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
            image: DecorationImage(
            colorFilter: ColorFilter.mode(
            c11.withOpacity(0.7),
            BlendMode.darken
           ),
            image:const AssetImage("assets/images/screen3.png"),
            fit: BoxFit.cover,
           )
          ),
            child:   Container(
              margin:  const EdgeInsets.only(bottom: 100,left: 30,right: 30),
              child: Image.asset("assets/images/applogo.png",
             )
            ),
          ),    
            Positioned(
             bottom: 0,
             child: Column(
             children: [
              Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: 100,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c31,borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(color: c10,borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
              Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                color: c31,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
               ),
                child: Column(
                children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text("YOU BRING THE BEAUTY, \n WE'LL PROVIDE THE SPACE",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 23,
                color: c8,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold
               ),
              ),
             ),
              Container(
                margin: const EdgeInsets.only(top: 15 ,left: 20 ,right: 20),
                child: const Text("Book available salon space at \n Top rated salons and Barbershops",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 14,
               ),
              ),
            ),
              const SizedBox(
               height: 20,
              ),
            //Material Button No.03
              MaterialButton(
                height: 50,
                minWidth: 280,
                color: c15,
                splashColor: c22,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                     MaterialPageRoute(
                      builder: (context) => const WelcomeScreen()
                       ),
                     (route) => false);
                },
                child: const Text("GET STARTED",
                style: TextStyle(
                fontSize: 14,
                color: c7,
                fontWeight: FontWeight.bold
                ),
               ),
              ),
             ],
            ),
           ),
          ],
         ),
        ),
       ], 
      ),  
     ],
    ),
   );
  }
}