import 'package:bss_app/screens/withdraw.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class WithdrawalsScreen extends StatefulWidget {
  const WithdrawalsScreen({super.key});

  @override
  State<WithdrawalsScreen> createState() => _WithdrawalsScreenState();
}

class _WithdrawalsScreenState extends State<WithdrawalsScreen> {
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
            title: const Text("WITHDRAWALS",
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
          // alignment: Alignment.bottomLeft,
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
              const SizedBox(height: 10),
              Container(
                height: 190,
                width: 310,
                decoration: const BoxDecoration(
                image:DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/Mask Group 6.png")
                ) ,
                 color: c9,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Column( 
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 55),
                      child: Text("Your Balance",
                      style: TextStyle(
                        fontSize: 19,
                        color: c7,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text("\$3500.00",
                      style: TextStyle(
                        fontSize: 33,
                        color: c7,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Padding(
                padding: EdgeInsets.only(left: 23),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Recent Transaction",
                  style: TextStyle(
                  fontSize: 15,
                  color: c19,
                  fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_forward_ios_outlined,
                size: 12,
                ),
              )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                       height: 65,
                       width: 65,
                       decoration: BoxDecoration(
                        image: const DecorationImage(
                          scale: 4,
                          image: AssetImage("assets/images/tansfers.png")
                        ),
                        border: Border.all(
                          color: c15,
                          width: 3
                        ),
                        color: c7,
                        borderRadius: BorderRadius.circular(50)
                       ),
                    ),
                  ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("BANK ACCOUNT",
                          style: TextStyle(
                            fontSize: 13,
                            color: c19,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10 ),
                            child: Text("Withdraw to bank account",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text("- \$ 500",
                      style: TextStyle(
                        fontSize: 20,
                        color: c27,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                ],
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                       height: 65,
                       width: 65,
                       decoration: BoxDecoration(
                        image: const DecorationImage(
                          scale: 5,
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/img3.png")
                        ),
                        border: Border.all(
                          color: c15,
                          width: 3
                        ),
                        color: c7,
                        borderRadius: BorderRadius.circular(50)
                       ),
                    ),
                  ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("JENNY",
                          style: TextStyle(
                            fontSize: 13,
                            color: c19,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10 ),
                            child: Text("Money Recieved",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text("+ \$ 500",
                      style: TextStyle(
                        fontSize: 20,
                        color: c15,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                ],
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                       height: 65,
                       width: 65,
                       decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          scale: 4,
                          image: AssetImage("assets/images/img4.png")
                        ),
                        border: Border.all(
                          color: c15,
                          width: 3
                        ),
                        color: c7,
                        borderRadius: BorderRadius.circular(50)
                       ),
                    ),
                  ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("JENNY",
                          style: TextStyle(
                            fontSize: 13,
                            color: c19,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10 ),
                            child: Text("Money Recieved",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text("+ \$ 500",
                      style: TextStyle(
                        fontSize: 20,
                        color: c15,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 7),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
                minWidth: 310,
                color: c15,
                height: 50,
                splashColor: c22,
                onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(
                    builder: (context) => const WithdrawScreen(),
                    )
                  );
                },
                child: const Text("WITHDRAW",
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
        )
        
      
      ),
    );
  }
}