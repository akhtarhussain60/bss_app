import 'package:bss_app/screens/bottom_navigation.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeVarifyScreen extends StatefulWidget {
  const CodeVarifyScreen({super.key});

  @override
  State<CodeVarifyScreen> createState() => _CodeVarifyScreenState();
}

class _CodeVarifyScreenState extends State<CodeVarifyScreen> {
 
  TextEditingController  controller = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      backgroundColor: c31,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: c22,
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
                  ),
                ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                  BoxShadow(
                    color: c12,
                    blurRadius: 0.9,
                    spreadRadius: 0.4
                  )
                ]
              ),
            ),
        ),
          centerTitle: true,
          title: const Text("Enter your code",
          style: TextStyle(
          color: c8,
          fontSize: 23,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
        
        body: Container(
          padding: const EdgeInsets.only(),
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: Column(
          children:[
            const SizedBox(height:30),
            const Text("Please type the code we sent to",
            style: TextStyle(
            color: c14,
            fontSize: 15,
            fontWeight: FontWeight.bold  
            ),
            ),
            const SizedBox(height: 10),
            const Text("+212 861-2456 35",
            style: TextStyle(
             color: c15,
             fontSize: 15,
             fontWeight: FontWeight.bold 
            ),
            ),
           const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
               length: 4,
               appContext: context,
               controller: controller,
               cursorHeight: 19,
               keyboardType: TextInputType.number,
               boxShadows: const [
                BoxShadow(
                  color: c12,
                  blurRadius: 0.9,
                  spreadRadius: 0.5
                )
               ],
               cursorColor: c10,
               enableActiveFill: true,
               textStyle: const TextStyle(
                fontSize: 20 ,
                fontWeight: FontWeight.w500,
               ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldWidth:55,
                  fieldHeight: 55,
                  inactiveColor: c15,
                  selectedColor: c15,
                  activeFillColor: c7,
                  selectedFillColor: c7,
                  inactiveFillColor: c7,
                  activeColor: c15,
                  borderWidth: 1.5,
                  borderRadius: BorderRadius.circular(10)
                ),
                onChanged: ((value) {
                }),
               ),
            ),
              const SizedBox(height:20),
              Container(
                margin: const EdgeInsets.all(20),
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: MediaQuery.of(context).size.width,
                  color: c15,
                  height: 50,
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                     context,
                      MaterialPageRoute(
                       builder:(context) => BottomNavigationScreen(tabindex: 0),
                        ),
                        (route) => false
                     );
                  },
                  child: const Text("VERIFY",
                  style: TextStyle(
                  fontSize: 15,
                  color: c7,
                  fontWeight: FontWeight.bold
                  ),
                 ),
                ),
              ),
              const Text("Re-send code",
              style: TextStyle(
              color: c14,
              fontSize: 15,
              fontWeight: FontWeight.bold
              ),
             ),
            ],
          ),
        ),
      )
    );
  }
}