import 'package:bss_app/screens/bottom_navigation.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:table_calendar/table_calendar.dart';

class HostAccountScreen extends StatefulWidget {
  const HostAccountScreen({super.key});

  @override
  State<HostAccountScreen> createState() => _HostAccountScreenState();
}

class _HostAccountScreenState extends State<HostAccountScreen> {
    bool? chek1 = false;
    bool? chek2 = false;
    bool? chek3 = false;
    bool? chek4 = false;
    bool? chek5 = false;
    bool? chek6 = false;
    bool? chek7 = false;
    bool? chek8 = false;
    bool? chek9 = false;
    bool? chek10 = false;

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                               )
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
          title: const Text("Create an account",
          style: TextStyle(
          color: c8,
          fontSize: 23,
          fontWeight: FontWeight.bold
          ),
            ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
         overscroll.disallowIndicator();
         return true ;
        },
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children:[
                    /* Host Screen One */
                  SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                          children: [
                           SizedBox(
                            width: 200,
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                           Container(
                              height: 5,
                              width: 55,
                              decoration: BoxDecoration(color: c15,borderRadius: BorderRadius.circular(10)),
                            ),
                           Container(
                              height: 5,
                              width: 55,
                              decoration: BoxDecoration(color: c7 ,borderRadius: BorderRadius.circular(10)),
                            ),
                           Container(
                              height: 5,
                              width: 55,
                              decoration: BoxDecoration(color: c7,borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                            ),
                             ),
                          Container(
                          margin: const EdgeInsets.only(top: 30),
                          height:80,
                          decoration: BoxDecoration(
                          color: c7,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                             color: c12,
                             blurRadius: 0.9,
                             spreadRadius: 0.5,
                            ),
                           ],
                          ),
                          child: Row(
                          children: [
                           Container(
                               margin: const EdgeInsets.only(left: 10),
                               height: 70,
                               width: 100,
                               decoration: BoxDecoration(
                               color:c25,
                               borderRadius: BorderRadius.circular(18),
                              ),
                             child: Center(
                              child: Image.asset("assets/images/add.png",
                              color: c15,
                              ),
                            ),
                          ),
                          const Padding(
                           padding: EdgeInsets.only(left: 65),
                           child: Text("Select A Photo",
                                   style: TextStyle(
                                   fontSize: 16,
                                   color: c14,
                               ),
                           ),
                          ),
                          ],
                            ),
                             ),
                             Container(
                               height: 57,
                               margin: const EdgeInsets.only(top: 20),
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
                               decoration: const InputDecoration(
                               border: InputBorder.none,
                               hintText: "     User Name",
                               hintStyle: TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 14,
                              ),
                               prefixIcon:Padding(
                               padding: EdgeInsets.all(16),
                               child: Image(
                               image: AssetImage("assets/images/salon.png"),
                               ),
                              )
                             )
                            ), 
                           ),
                          const SizedBox(height: 20,),
                          Container(
                           padding: const EdgeInsets.only(left:15),
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
                           child:IntlPhoneField(
                            textAlignVertical: TextAlignVertical.center,
                     decoration: InputDecoration(
                      counter: const Offstage(),
                      hintText: '| 861-2456 35',
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
                    flagsButtonPadding: const EdgeInsets.only(left: 20),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                        ),
                            ),
                          Container(
                           decoration: BoxDecoration(
                           color: c7,
                           borderRadius: BorderRadius.circular(30),
                           boxShadow: const [
                             BoxShadow(
                              color: c12,
                              blurRadius: 0.9,
                              spreadRadius: 0.5
                             )
                           ]
                           ),
                           margin: const EdgeInsets.only(top: 20),
                            child: Theme(
                             data: Theme.of(context).copyWith(dividerColor: c16),
                              child: ExpansionTile(
                               iconColor: c15,
                               textColor: c15,
                               tilePadding: const EdgeInsets.only(left: 30 ,right: 20),
                                leading:const Icon(Icons.access_time_filled,
                                color: c15,
                                ),
                                title: const Text(" Opening Hours",
                                 style: TextStyle(
                                 fontSize: 14,
                                 ),
                               ),
                               children: [
                                     Column(
                                       children: [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                                             Container(
                                               decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("su",
                                                ),
                                               ),
                                             ),
                                             Container(
                                               decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("M",
                                                ),
                                               ),
                                             ),
                                               Container(
                                                 decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25,
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                               child: Text("T",
                                                ),
                                               ),
                                             ),
                                             Container(
                                               decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("W",
                                                ),
                                               ),
                                             ),
                                             Container(
                                               decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("TH",
                                                ),
                                               ),
                                             ),
                                             Container(
                                               decoration:BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: c25,
                                               ) ,
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("F",
                                                ),
                                               ),
                                             ),
                                             Container(
                                               decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                 color: c25,
                                               ),
                                               height: 40,
                                               width: 40,
                                               child: const Center(
                                                 child: Text("SA",
                                                ),
                                               ),
                                             ),
                                           ],
                                         ),
                                         const SizedBox(
                                           width: 230,
                                           child: TextField(
                                             textAlign: TextAlign.center,
                                             decoration: InputDecoration(
                                             border: UnderlineInputBorder(
                                             ),
                                             hintText: "8:00 AM - 8:00 PM",
                                             hintStyle: TextStyle(
                                               fontSize: 14
                                             ),
                                             suffixIcon: Icon(Icons.close,
                                             size: 15,
                                             color: c8,
                                             )
                                             )
                                           ),
                                         ),
                                 MaterialButton(
                                  shape: const RoundedRectangleBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(40))),
                                  minWidth: 135,
                                  color: c15,
                                  height: 28,
                                 onPressed: (){
                                 },
                                  child: const Text("Add hours",
                                  style: TextStyle(
                                  fontSize: 10,
                                 color: c7,
                                 fontWeight: FontWeight.bold
                                  ),
                                 ),
                               ),
                                       ],
                                     )
                                  ], 
                               ),
                            ),
                          ),
                           Container(
                             margin: const EdgeInsets.only(top: 20),
                             decoration: BoxDecoration(
                             color: c7 ,
                             borderRadius: BorderRadius.circular(30),
                             boxShadow: const [
                             BoxShadow(
                              color: c12,
                              blurRadius: 0.9,
                              spreadRadius: 0.5
                             )
                            ]
                           ), 
                           child: Theme(
                             data: Theme.of(context).copyWith(dividerColor: c16),
                             child: const ExpansionTile(
                              textColor: c15,
                              iconColor: c15,
                               tilePadding: EdgeInsets.only(right: 20 ,left: 32),
                               leading: Icon(Icons.edit,
                               color: c15,
                               ),
                               title: Text("Salon Descripion",
                               style: TextStyle(
                                fontSize: 14,
                               ),
                               ),
                               
                               children:  [
                                 Padding(padding: EdgeInsets.all(12),
                                 child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing\nelitr ,sed diam nonumy eirmod tempor invidunt ut\nlabore et dolore magna aliquyam erat, sed diam\nvoluptua .At vero eos at accusam et justo duo\ndolores et ea rebum. Stet clita a kasd gubergren,no\nsea takimata sanctus est Lorem ipsum dolor sit",
                                 style: TextStyle(
                                 fontSize: 12
                                 ),
                                 ),
                                 )
                               ],
                             ),
                           ),
                          ),
                          const SizedBox(height: 20),
                         Material(
                           borderRadius: const BorderRadius.all(Radius.circular(30)),
                            elevation: 2.0,
                            color: c7,
                             child: Theme(
                             data: Theme.of(context).copyWith(dividerColor: c16),
                               child: ExpansionTile(
                                 iconColor: c15,
                                 textColor: c15,
                                tilePadding: const EdgeInsets.only(left: 35 ,right: 20),
                                  leading: const Icon(Icons.calendar_month,
                                   size: 23,
                                    color: c15,
                                   ),
                                     title: const Text("Blocked Out Dates",
                                     style: TextStyle(
                                     fontSize: 14,
                                     ),
                                     ),
                                  children: [
                                    Container(
                                                  alignment: Alignment.topCenter,
                                                  height: 300,
                                                width: 340,
                                                  decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                                                       ),
                                                       child: TableCalendar(
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: DateTime.now(),
                                rowHeight: 30,
                                daysOfWeekVisible: true,
                                calendarStyle: const CalendarStyle(
                                  isTodayHighlighted: true,
                                  selectedTextStyle: TextStyle(color: Colors.white),
                                  todayDecoration: BoxDecoration(
                                    color: Color(0xFF6043F5),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                daysOfWeekStyle: const DaysOfWeekStyle(
                                  weekdayStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                  weekendStyle: TextStyle(
                                    //  decoration: TextDecoration(),
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  leftChevronMargin: EdgeInsets.only(left: 80),
                                  rightChevronMargin: EdgeInsets.only(right: 60),
                                  // rightChevronPadding: EdgeInsets.zero,
                                  rightChevronIcon: Icon(
                                    Icons.arrow_right,
                                    size: 30,
                                  ),
                                  leftChevronIcon: Icon(
                                    Icons.arrow_left,
                                    size: 30,
                                  ),
                                  titleTextStyle: TextStyle(
                                      //decorationThickness: 200,
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                             
                                //daysOfWeekHeight: 20,
                                                       ),
                                                     ),
                                  ],
                                 ),
                             ),
                           ),
                          Container(
                             margin: const EdgeInsets.only(top: 20),
                             decoration: BoxDecoration(
                             color: c7,
                             borderRadius: BorderRadius.circular(30),
                             boxShadow: const [
                             BoxShadow(
                              color: c12,
                              blurRadius: 0.9,
                              spreadRadius: 0.5
                             )
                            ]
                           ), 
                           child: Theme(
                             data: Theme.of(context).copyWith(dividerColor: c16),
                             child: const ExpansionTile(
                              iconColor: c15,
                               textColor: c15,
                               tilePadding: EdgeInsets.only(left: 35 ,right: 20),
                               leading: Icon(Icons.my_location,
                               size: 25,
                               color: c15,
                               ),
                               title: Text("Pick Your Location",
                               style: TextStyle(
                                fontSize: 14
                               ),
                               ),
                               children: [
                                 Image(image: AssetImage("assets/images/Base.png"))
                               ],
                             ),
                           ),
                          ),
                          const SizedBox(height: 25,),
                          Container(
                           height: 380,
                           decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(30)),
                           color: c7,
                            boxShadow: [
                             BoxShadow(
                            color: c12,
                            blurRadius: 0.9,
                            spreadRadius: 0.5
                             )
                            ]
                           ),
                           child: Column(
                            children: [
                             const SizedBox(height: 20,),
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 30),
                                   child: Image.asset("assets/images/pc2.png",
                                   scale: 8,
                                   ),
                                 ),
                                 const Padding(
                                   padding: EdgeInsets.only(left: 30),
                                   child: Text("Salon Adress",
                                   style: TextStyle(
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold  ,
                                  //  color: c14
                                   ),
                                   ),
                                 ),
                               ],
                             ),
                               const SizedBox(height: 5),
                               const Padding(
                                 padding: EdgeInsets.only(left: 30 ,right: 30),
                                 child: TextField(
                                  cursorColor: c15,
                                   decoration: InputDecoration(
                                    floatingLabelStyle: TextStyle(
                                      color: c15
                                    ),
                                     focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: c15,
                                        width: 2
                                      )
                                     ),
                                     labelText: "Adress Line 1",
                                     labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      // color: c14
                                     )
                                   ),
                                 ),
                               ),
                               const SizedBox(height: 5,),
                               const Padding(
                                 padding: EdgeInsets.only(left: 30 ,right: 30),
                                 child: TextField(
                                  cursorColor: c15,
                                   decoration: InputDecoration(
                                    floatingLabelStyle: TextStyle(
                                      color: c15
                                    ),
                                     focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: c15,
                                        width: 2
                                      )
                                     ),
                                     labelText: "Adress Line 2",
                                     labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      // color: c14
                                     )
                                   ),
                                 ),
                               ),
                               const SizedBox(height: 5,),
                               const Padding(
                                 padding: EdgeInsets.only(left: 30 ,right: 30),
                                 child: TextField(
                                  cursorColor: c15,
                                   decoration: InputDecoration(
                                    floatingLabelStyle: TextStyle(
                                      color: c15
                                    ),
                                     focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: c15,
                                        width: 2
                                      )
                                     ),
                                     labelText: "City",
                                     labelStyle: TextStyle(
                                       fontSize:14,
                                       fontWeight: FontWeight.w500,
                                      //  color: c14
                                     )
                                   ),
                                 ),
                               ),
                               const SizedBox(height: 5,),
                               const Padding(
                                 padding: EdgeInsets.only(left: 30 ,right: 30),
                                 child: TextField(
                                  cursorColor: c15,
                                   decoration: InputDecoration(
                                    floatingLabelStyle: TextStyle(
                                      color: c15
                                    ),
                                     focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: c15,
                                        width: 2
                                      )
                                     ),
                                     labelText: "State",
                                     labelStyle: TextStyle(
                                       fontSize: 14,
                                       fontWeight: FontWeight.w500,
                                      //  color: c14,
                                     )
                                   ),
                                 ),
                               ),
                               const SizedBox(height: 5,),
                               const Padding(
                                 padding: EdgeInsets.only(left: 30 ,right: 30),
                                 child: TextField(
                                  cursorColor: c15,
                                   decoration: InputDecoration(
                                    focusColor: c15,
                                    floatingLabelStyle: TextStyle(
                                      color: c15
                                    ),
                                     focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: c15,
                                        width: 2
                                      )
                                     ),
                                     labelText: "Country",
                                     labelStyle: TextStyle(
                                       fontSize: 14,
                                       fontWeight: FontWeight.w500,
                                      //  color: c14
                                     )
                                   ),
                                 ),
                               ),
                            ], 
                           ),
                          ),
                          const SizedBox(height: 20,),
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                    minWidth: 320,
                    color: c15,
                    height: 50,
                    splashColor: c22,
                    onPressed: (){
                    _controller .jumpToPage(1);
                    },
                    child: const Text("NEXT",
                    style: TextStyle(
                    fontSize: 14,
                    color: c7,
                    fontWeight: FontWeight.bold
                    ),
                   ),
                  ),
                  const SizedBox(height: 20),
                      ],
                     ),
                   ),
                  ),
      
              /* Second Host Screen */
      
                  Container(
                    height: MediaQuery.of(context).size.height*0.9,
                    padding: const EdgeInsets.only(left: 20 ,right: 20),
                    child: Column(
                      children: [
                         SizedBox(
                           width: 200,
                           child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                           Container(
                             height: 5,
                             width: 55,
                             decoration: BoxDecoration(color: c7,borderRadius: BorderRadius.circular(10)),
                           ),
                           Container(
                             height: 5,
                             width: 55,
                             decoration: BoxDecoration(color: c15 ,borderRadius: BorderRadius.circular(10)),
                           ),
                           Container(
                             height: 5,
                             width: 55,
                             decoration: BoxDecoration(color: c7,borderRadius: BorderRadius.circular(10)),
                           ),
                           ],
                           ),
                            ),
                            const SizedBox(height: 10),
                            const Text("SALON TYPE",
                            style: TextStyle(
                            fontSize: 15,
                            color: c14,
                            fontWeight: FontWeight.bold
                            ),
                           ),
                            const SizedBox(height: 10,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/hair.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Barber\nShop",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/hairsalon.png",
                                      scale: 3,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Hair\nSalon",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                   Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/spa.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Spa\nSalon",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                  Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/nails.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Nail\nSalon",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     ),
                                   ],
                                 ),    
                             ],
                            ),
                            const SizedBox(height: 10),
                            const Text("WORKSPACE SALON",
                            style: TextStyle(
                            fontSize: 15,
                            color: c14,
                            fontWeight: FontWeight.bold 
                            ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                                Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                        ],
                                       ),
                                      child: Image.asset("assets/images/make.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Makeup\nStation",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                      ),
                                      child: Image.asset("assets/images/stylish.png",
                                      scale: 2,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Stylish\nStation",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                    )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/spa.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10),
                                     const Text("Massage\nRoom",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/nails.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Nail\nStation",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                                Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/facial.png",
                                      scale: 3,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Facial\nRoom",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                        ],
                                       ),
                                      child: Image.asset("assets/images/private.png",
                                      scale: 3,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Private\nSuite",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration:BoxDecoration(
                                       color: c7,
                                       borderRadius:BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                           spreadRadius: 0.5
                                         ),
                                        ],
                                       ),
                                      child: Image.asset("assets/images/hair.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Barber\nShop",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Container(
                                       height: 60,
                                       width: 60,
                                       decoration: BoxDecoration(
                                       color: c7,
                                       borderRadius: BorderRadius.circular(40),
                                       boxShadow: const [
                                        BoxShadow(
                                         color: c12,
                                          blurRadius: 0.9,
                                          spreadRadius: 0.5
                                         ),
                                        ],
                                       ),
                                      child: Image.asset("assets/images/esthetician.png",
                                      scale: 2.5,
                                      ),
                                     ),
                                     const SizedBox(height: 10,),
                                     const Text("Esthetician\nRoom",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 12,
                                     color: c14  
                                     ),
                                    )
                                   ],
                                 ),
                               ],
                             ),
                            Container(
                             margin: const EdgeInsets.only(top: 20),
                             height:70,
                             decoration: BoxDecoration(
                             color: c7,
                             borderRadius: BorderRadius.circular(20),
                             boxShadow: const [
                              BoxShadow(
                               color: c12,
                                blurRadius: 0.9,
                                 spreadRadius: 0.5
                            )
                          ]          
                        ),
                         child: GestureDetector(
                          onTap: () {
                            showDialog(
                            context: context,
                            builder: (context) => StatefulBuilder(
                              builder:(context , setState) {
                             return AlertDialog(
                              insetPadding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                 vertical: 20
                                ),
                                backgroundColor: c18,
                            shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              title: Column(
                        children: [
                          Row(
                           children: [
                             Transform.scale(
                              scale: 0.8,
                               child: Checkbox( 
                                value: chek1,
                                 onChanged: (chek1) => setState(() => this.chek1 = chek1!),
                       ),
                     ),
                     const Text("Coffee/Beverages for Clients",
                     style: TextStyle(
                      fontSize: 11
                     ),
                    ),
                  ],
                    ),
                    Row(
                      children:[
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek2,
                            onChanged: (chek2) => setState(
                              () => this.chek2 = chek2!
                              ),
                          ),
                        ),
                     const Text("Stylish station with mirror and chair",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek3,
                            onChanged: (chek3) => setState(() => this.chek3 = chek3!),
                          ),
                        ),
                     const Text("Shampoo Bowl/Wet bar",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                    Row(
                      children:[
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek4,
                            onChanged: (chek4) => setState(() => this.chek4 = chek4!),
                          ),
                        ),
                     const Text("Hooded dryer",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                    ),
                   ],
                  ),
                    Row(
                      children:  [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek5,
                            onChanged: (chek5) => setState(() => this.chek5 = chek5!),
                          ),
                        ),
                     const Text("Colour bar",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                    Row(
                      children:  [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek6,
                            onChanged: (chek6) => setState(() => this.chek6 = chek6!),
                          ),
                        ),
                     const Text("Massage table",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),Row(
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek7,
                            onChanged: (chek7) => setState(() => this.chek7 = chek7!),
                          ),
                        ),
                     const Text("Pedicure chair and Pedicure stool",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek8,
                            onChanged: (chek8) => setState(() => this.chek8 = chek8!),
                          ),
                        ),
                     const Text("Nail station and Nail color",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                    Row(
                      children:  [
                        Transform.scale(
                          scale: 0.8,
                          child:  Checkbox(
                           value: chek9,
                            onChanged: (chek9) => setState(() => this.chek9 = chek9!),
                         ),
                        ),
                     const Text("Nail polish racks",
                     style: TextStyle(
                      fontSize: 11 
                     ),
                     )
                      ],
                    ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 20 ,right: 20 ,bottom: 20),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                    minWidth: 240,
                    height: 50,
                    color: c15,
                    splashColor: c22,
                    onPressed: (){
                     Navigator.pop(context); 
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
                     );
                      }
                       )
                    );
                       
                          },
                           child: const Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                               Icon(
                                 Icons.add_circle,
                                 color: c15,
                                 size: 45,
                                 ),
                                   Text("Add Amenities",
                                    style: TextStyle(
                                     fontSize: 17,
                                      color: c14,
                                       fontWeight: FontWeight.bold
                                 ),
                             ),
                                               ],
                                             ),
                         ),
                      ),
                     const SizedBox(height:15),
                    MaterialButton(
                     shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(40))),
                     minWidth: 320,
                     color: c15,
                     height: 50,
                     onPressed: () {
                    _controller .jumpToPage(3);
                     },
                     child: const Text("NEXT",
                     style: TextStyle(
                     fontSize: 15,
                     color: c7,
                     fontWeight: FontWeight.bold
                     ),
                    ),
                      ),
                    ],
                  ),
              ),
      
               /* Third Host Screen */
      
                     Container(
                      height: 610,
                      padding: const EdgeInsets.only(left: 20 ,right: 20),
                       child: Column(
                         children:  [
                           SizedBox(
                             width: 200,
                             child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                             Container(
                               height: 5,
                               width: 55,
                               decoration: BoxDecoration(color: c7,borderRadius: BorderRadius.circular(10)),
                             ),
                             Container(
                               height: 5,
                               width: 55,
                               decoration: BoxDecoration(color: c7 ,borderRadius: BorderRadius.circular(10)),
                             ),
                             Container(
                               height: 5,
                               width: 55,
                               decoration: BoxDecoration(color: c15,borderRadius: BorderRadius.circular(10)),
                             ),    
                            ],
                             ),
                           ),
                           const SizedBox(
                             height: 50,
                           ),
                           const Padding(
                             padding: EdgeInsets.only(right: 140),
                             child: Text(
                               "Amount in USD",
                               style: TextStyle(
                               fontSize: 17,
                               color: c14,
                               fontWeight: FontWeight.w500
                               ),
                             ),
                           ),
                           Container(
                            margin: const EdgeInsets.only(top: 20),
                            height:80,
                             decoration: BoxDecoration(
                              color: c7,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                 color: c12,
                              blurRadius: 0.9,
                               spreadRadius: 0.5
                              )
                            ]          
                          ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                               Container(
                                   height: 60,
                                   width: 110,
                                  decoration: BoxDecoration(
                                  color: c25,
                                  borderRadius: BorderRadius.circular(18),
                                  ),
                                 child: const Center(
                                   child: Text("Hourly",
                                   style: TextStyle(
                                   fontSize: 18,
                                   color: c19 
                                   ),
                                   ),
                                 ),
                             ),
                             const Text("0.00",
                                    style: TextStyle(
                                     fontSize: 37,
                                     color: c8,
                                     fontFamily: "fonttwo",
                                 ),
                             ),
                         ],
                       ),
                       ),
                       Container(
                            margin: const EdgeInsets.only(top: 30),
                            height:80,
                             decoration: BoxDecoration(
                              color: c7,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                 color: c12,
                              blurRadius: 0.9,
                               spreadRadius: 0.5
                              )
                            ]          
                          ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                               Container(
                                   height: 60,
                                   width: 110,
                                  decoration: BoxDecoration(
                                  color:c25,
                                  borderRadius: BorderRadius.circular(18)),
                                 child: const Center(
                                   child: Text("Daily",
                                   style: TextStyle(
                                   fontSize: 18,
                                   color: c19 
                                  ),
                                ),
                              ),
                            ),
                             const Text("0.00",
                                    style: TextStyle(
                                     fontSize: 37,
                                     color: c8,
                                     fontFamily: "fonttwo"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           Container(
                            margin: const EdgeInsets.only(top: 30),
                            height:80,
                             decoration: BoxDecoration(
                              color: c7,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                 color: c12,
                              blurRadius: 0.9,
                               spreadRadius: 0.5
                              )
                            ]          
                          ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                               Container(
                                   height: 60,
                                   width: 110,
                                  decoration: BoxDecoration(
                                  color:c25,
                                  borderRadius: BorderRadius.circular(18)),
                                 child: const Center(
                                   child: Text("Weekly",
                                   style: TextStyle(
                                   fontSize: 18,
                                   color: c19 
                                  ),
                                ),
                              ),
                            ),
                             const Text("0.00",
                                    style: TextStyle(
                                     fontSize: 37,
                                     color: c8,
                                     fontFamily: "fonttwo",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           const SizedBox(height: 25,),
                       Container(
                        margin: const EdgeInsets.only(left: 20,right: 20),
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           const Text("By continuing sign up you agree to the following\nour Terms & Conditions",
                           style: TextStyle(
                            fontSize: 10,
                          ),
                                           ),
                           Transform.scale(
                            scale: 0.7,
                             child: Checkbox(
                               value: chek1,
                               activeColor: c14,
                                onChanged:(newBool){
                                 setState(() {
                                   chek1=newBool;
                                 });
                                }
                              ),
                           ),
                          ],
                                           ),
                       ),
                      const SizedBox(height:10),
                       MaterialButton(
                       shape: const RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(40))),
                       minWidth: 320,
                       color: c15,
                       height: 50,
                       splashColor: c22,
                       onPressed: (){
                        Navigator.pushAndRemoveUntil(
                          context,
                           MaterialPageRoute(
                            builder:  (context) => BottomNavigationScreen(tabindex: 0)),
                            (route) => false);
                      },
                       child: const Text("FINISH",
                       style: TextStyle(
                       fontSize: 15,
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
    );
  }
}