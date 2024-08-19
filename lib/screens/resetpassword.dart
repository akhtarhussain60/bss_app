import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
            title: const Text("RESET PASSWORD",
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
        body:Stack(
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
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
         ),
         child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Existing Password",
                style:TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w500,
                 color: c14 
                  ),
                ),
              ),
                Container(
                  alignment: Alignment.center,
                          height: 57,
                            margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
                            padding: const EdgeInsets.only(left:30 ),
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
                              keyboardType: TextInputType.number,
                              obscureText: true,
                             decoration: const InputDecoration(
                            border: InputBorder.none,
                             hintText: "Enter Existing Password",
                             hintStyle: TextStyle(
                              fontSize: 14
                               ),
                              )
                             ), 
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text("New Password",
                             style:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                           color: c14 
                            ),
                           ),
                          ),
                          Container(
                           alignment: Alignment.center,
                           height: 57,
                            margin: const EdgeInsets.only(top: 15 ,left: 20 ,right: 20),
                            padding: const EdgeInsets.only(left:30 ),
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
                              keyboardType: TextInputType.number,
                              obscureText: true,
                             decoration: const InputDecoration(
                            border: InputBorder.none,
                             hintText: "Enter New Password",
                             hintStyle: TextStyle(
                              fontSize: 14
                             ),
                              )
                             ), 
                            ),
                            const SizedBox(height: 10,),
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text("Must add 6 character withing number",
              style:TextStyle(
               fontSize: 12,
               fontWeight: FontWeight.w500,
               color: c14 
               ) ,
              ),
             ),
               Container(
                margin: const EdgeInsets.only(top: 20 ,left: 20 ,right: 20),
                 child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: MediaQuery.of(context).size.width,
                  color: c15,
                  height: 54,
                  splashColor: c22,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text("RESET",
                  style: TextStyle(
                  fontSize: 15,
                  color: c7,
                  fontWeight: FontWeight.bold
                  ),
                 ),
              ),
               ),
              const SizedBox(height: 10)
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