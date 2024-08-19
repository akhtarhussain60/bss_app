import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class AddPaymentMethodTwo extends StatefulWidget {
  const AddPaymentMethodTwo({super.key});

  @override
  State<AddPaymentMethodTwo> createState() => _AddPaymentMethodTwoState();
}

class _AddPaymentMethodTwoState extends State<AddPaymentMethodTwo> {
  String dropvalue = "Credit/Debit";

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
                    image: AssetImage(
                      "assets/images/arrowback.png",
                    )),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(color: c12, blurRadius: 0.9, spreadRadius: 0.4),
                ],
              ),
            ),
          ),
          centerTitle: true,
          title: const Text(
            "ADD PAYMENT METHOD",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications,
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
                    image: AssetImage(
                      "assets/images/BG.png",
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(160),
                      bottomRight: Radius.circular(100))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 120),
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: c31,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 17,
                              color: c14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 170,
                          decoration: BoxDecoration(
                              color: c7,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: c12,
                                    blurRadius: 0.9,
                                    spreadRadius: 0.7)
                              ]),
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(10),
                            value: dropvalue,
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            style: const TextStyle(color: c11),
                            underline: Container(),
                            onChanged: (String? value) {
                              setState(() {
                                dropvalue = value!;
                              });
                            },
                            items: <String>["Credit/Debit", "Bank Account"]
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Form(
                        child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "BANK NAME",
                            style: TextStyle(
                                fontSize: 10,
                                color: c14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: c7,
                            border: Border.all(color: c8, width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: c12,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "   Union Bank",
                                hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: c14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "ACCOUNT NUMBER",
                            style: TextStyle(
                                fontSize: 10,
                                color: c14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: c7,
                            border: Border.all(color: c8, width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: c12,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    "   1234       5678       1234       0987",
                                hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: c14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "YOUR NAME",
                            style: TextStyle(
                                fontSize: 10,
                                color: c14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: c7,
                            border: Border.all(color: c8, width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: c12,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "   Adam Sandar",
                                hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: c14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(height: 70),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 320,
                      height: 50,
                      color: c15,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "ADD ACCOUNT",
                        style: TextStyle(
                            color: c7,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
