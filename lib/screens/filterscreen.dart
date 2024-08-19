import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  
  RangeValues _currentrangevalue = const RangeValues(0,500);

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
            title: const Text("FILTER",
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
                 width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.9,
             decoration: const BoxDecoration(
           color: c31,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30))
         ),
         child: SingleChildScrollView(
           child: Column(
            children: [
              const SizedBox(height: 17),
              const Text('AVAILABILITY',
              style: TextStyle(
               fontSize: 14,
               color: c19,
               fontWeight: FontWeight.bold 
              ),
              ),
              const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Material(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                          elevation: 2.0,
                           color: c7,
                            child:Container(
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
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  leftChevronMargin: EdgeInsets.only(left: 80),
                                  rightChevronMargin: EdgeInsets.only(right: 60),
                                  rightChevronIcon: Icon(
                                    Icons.arrow_right,
                                    size: 30,
                                  ),
                                  leftChevronIcon: Icon(
                                    Icons.arrow_left,
                                    size: 30,
                                  ),
                                  titleTextStyle: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                       fontWeight: FontWeight.w900),
                                     ),
                                   ),
                                 ),
                               ),
                            ),
              const SizedBox(height: 20),
              const Text("SALON TYPE",
              style: TextStyle(
                fontSize: 14,
                color:c19,
                fontWeight: FontWeight.bold 
              ),
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
                                          spreadRadius: 0.4
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/hair.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 12,),
                                     const Text("Hair",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 14,
                                     color: c19  
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
                                          spreadRadius: 0.4
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/nails.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 12,),
                                     const Text("Nail",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 14,
                                     color: c19  
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
                                          spreadRadius: 0.4
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/spa.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 12,),
                                     const Text("Spa",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 14,
                                     color: c19  
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
                                          spreadRadius: 0.4
                                         ),
                                       ],
                                       ),
                                      child: Image.asset("assets/images/make.png",
                                      scale: 4,
                                      ),
                                     ),
                                     const SizedBox(height: 12,),
                                     const Text("Makeup",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                     fontSize: 14,
                                     color: c19  
                                     ),
                                     )
                                   ],
                                 ),
                                 
                                ],
                              ),
                               const SizedBox(height: 15),
                                 const Text("Price Range",
                                 style: TextStyle(
                                  fontSize: 14,
                                  color: c19,
                                  fontWeight: FontWeight.bold
                                 ),
                                 ),
                                 const SizedBox(height: 4),
                                 const Row(
                                  children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: 12),
                                     child: Text("\$10",
                                     style: TextStyle(
                                      fontSize: 16,
                                      color: c19,
                                      fontWeight: FontWeight.w300
                                     ),
                                     ),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 270),
                                     child: Text("\$500",
                                     style: TextStyle(
                                      fontSize: 16,
                                      color: c19,
                                      fontWeight: FontWeight.w300
                                     ),
                                     ),
                                   )
                                  ],
                                 ),
                                 RangeSlider(
                                  activeColor: c9,
                                  inactiveColor: c15,
                                  divisions: 5,
                                  max: 500,
                                   labels: RangeLabels(
                                  _currentrangevalue.start.round().toString(),
                                   _currentrangevalue.end.round().toString(),
                                ),
                                  values: _currentrangevalue,
                                   onChanged: (RangeValues value) =>  {
                                     setState(() {
                                      _currentrangevalue = value;
                                      })
                                   })
            ],
           ),
         ),
        )
      
          ],
        )
        
      
      ),
    );
  }
}