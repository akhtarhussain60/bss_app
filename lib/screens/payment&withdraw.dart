import 'package:bss_app/screens/payment.dart';
import 'package:bss_app/screens/withdrawals.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class PaymentAndWithdrawalScreen extends StatefulWidget {
  const PaymentAndWithdrawalScreen({super.key});

  @override
  State<PaymentAndWithdrawalScreen> createState() => _PaymentAndWithdrawalScreenState();
}

class _PaymentAndWithdrawalScreenState extends State<PaymentAndWithdrawalScreen> {
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
            title: const Text("PAYMENTS AND WITHDRAWALS",
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder:(context) => const PaymentScreen(),
                    ) 
                   );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
                       height: 55,
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/card.png",
                            height: 24,
                            width: 24,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("  Payments",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
              ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => const WithdrawalsScreen(),
                          )
                        );
                      },
                      child: Container(
                       height: 55,
                       margin: const EdgeInsets.only(left: 20 ,right: 20),
                       decoration: BoxDecoration(
                        color: c7,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                          ),
                        ],
                       ),
                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset("assets/images/withdraw.png",
                            height: 24,
                            width: 24,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: Text("  Withdrawals",
                            style: TextStyle(
                             fontSize: 15 ,
                             fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ],
                       ),
                      ),
                    ),
            ],
          ),
        ),
       
          ],
        )
        
       
      ),
    );
  }
}