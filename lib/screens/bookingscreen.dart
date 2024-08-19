import 'package:bss_app/screens/payment1.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  bool _lights = false;
  bool _lights1 = false;
  bool _lights2 = false;

  int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          actions: [
            Container(
              width: 27,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: c7,
                boxShadow: [
                  BoxShadow(color: c12, blurRadius: 0.9, spreadRadius: 0.5),
                ],
              ),
              child: const Icon(
                Icons.favorite,
                size: 18,
                color: c15,
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 65,
          decoration: const BoxDecoration(
            color: c7,
            boxShadow: [
              BoxShadow(color: c12, blurRadius: 0.9, spreadRadius: 0.6),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "\$50/DAY",
                style: TextStyle(
                    fontSize: 16, color: c14, fontWeight: FontWeight.w500),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentOneScreen()));
                },
                minWidth: 160,
                height: 30,
                color: c15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Booking",
                  style: TextStyle(
                      color: c7, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/slider5.jpg"),
            Positioned(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 180),
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: c15,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: c7, borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: c7, borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: c7, borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: c7, borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: MediaQuery.of(context).size.height * 0.58,
                    decoration: const BoxDecoration(
                        color: c31,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, right: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const Text(
                                  "The Black Shadow",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: c19,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 70),
                                Image.asset(
                                  "assets/images/chairlogg.png",
                                  height: 18,
                                  width: 18,
                                ),
                                Image.asset(
                                  "assets/images/chairlogg.png",
                                  height: 18,
                                  width: 18,
                                ),
                                Image.asset(
                                  "assets/images/chairlogg.png",
                                  height: 18,
                                  width: 18,
                                ),
                                Image.asset(
                                  "assets/images/chairlogg.png",
                                  height: 18,
                                  width: 18,
                                ),
                                Image.asset(
                                  "assets/images/chairlogg.png",
                                  height: 18,
                                  width: 18,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "150 Reviews",
                                style: TextStyle(
                                    color: c19,
                                    fontSize: 12,
                                    fontFamily: "Montserrat"),
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Divider(),
                            const Text(
                              "FACILITIES",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: c19,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 55, right: 70),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: c7,
                                        borderRadius: BorderRadius.circular(30),
                                        image: const DecorationImage(
                                            scale: 17,
                                            image: AssetImage(
                                                "assets/images/team.png")),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: c12,
                                              blurRadius: 0.9,
                                              spreadRadius: 0.6)
                                        ]),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: c7,
                                        borderRadius: BorderRadius.circular(30),
                                        image: const DecorationImage(
                                            scale: 4,
                                            image: AssetImage(
                                                "assets/images/car.png")),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: c12,
                                              blurRadius: 0.9,
                                              spreadRadius: 0.6)
                                        ]),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: c7,
                                        image: const DecorationImage(
                                            scale: 4,
                                            image: AssetImage(
                                                "assets/images/w.png")),
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: c12,
                                              blurRadius: 0.9,
                                              spreadRadius: 0.6)
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  radius: 45,
                                  foregroundImage: AssetImage(
                                      "assets/images/Ellipse 277.png"),
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "ADAM SANDER",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 20,
                                          color: c14,
                                        ),
                                        Text(
                                          "  Texas, USA",
                                          style: TextStyle(
                                              fontSize: 13, color: c14),
                                        ),
                                      ],
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      minWidth: 110,
                                      height: 33,
                                      color: c15,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Text(
                                        "PROFILE",
                                        style: TextStyle(
                                            color: c7,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(),
                            const Text(
                              " LOCATION",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: c19,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: c14,
                                ),
                                Text(
                                  "  Texas, USA",
                                  style: TextStyle(fontSize: 14, color: c14),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Image.asset("assets/images/Base.png"),
                            const Divider(),
                            const SizedBox(height: 5),
                            const Text(
                              " LOCATION",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: c19,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore\nmagna aliquyam erat, sed diam voluptua.\nAt vero eos at accusam et justo duo\ndolores et ea rebum.\n\nLorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore",
                              style: TextStyle(color: c19),
                            ),
                            const SizedBox(height: 5),
                            const Divider(),
                            const Text(
                              "REVIEWS",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: c19,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  foregroundImage: AssetImage(
                                      "assets/images/Ellipse 277.png"),
                                ),
                                SizedBox(width: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ADAM",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: c19,
                                        fontFamily: "Montserrat",
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore",
                                      style:
                                          TextStyle(fontSize: 11, color: c19),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  foregroundImage: AssetImage(
                                      "assets/images/Ellipse 290.png"),
                                ),
                                SizedBox(width: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "JENNY",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: c19,
                                        fontFamily: "Montserrat",
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr ,sed diam nonumy eirmod\ntempor invidunt ut labore et dolore",
                                      style:
                                          TextStyle(fontSize: 11, color: c19),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 25),
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 100,
                              height: 30,
                              color: c15,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "See More",
                                style: TextStyle(
                                    color: c7,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Material(
                              elevation: 2.0,
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30.0)),
                              child: Theme(
                                data: Theme.of(context)
                                    .copyWith(dividerColor: c16),
                                child: ExpansionTile(
                                  childrenPadding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  title: const Text('Opening Hours'),
                                  tilePadding: const EdgeInsets.only(
                                      left: 30, right: 40),
                                  textColor: const Color(0xFF6043F5),
                                  iconColor: const Color(0xFF6043F5),
                                  leading: const Icon(
                                    Icons.watch_later,
                                    color: Color(0xFF6043F5),
                                  ),
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Sun"),
                                              Text("Mon"),
                                              Text("Tue"),
                                              Text("Wed"),
                                              Text("Thu"),
                                              Text("Fri"),
                                              Text("Sat"),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Closed"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                              Text("8:00 AM - 8:00 PM"),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Divider(),
                            const SizedBox(height: 5),
                            const Text(
                              "SELECT WORKSTATION",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: c19,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                            Material(
                                elevation: 2,
                                color: c7,
                                borderRadius: BorderRadius.circular(50),
                                child: CircleAvatar(
                                  backgroundColor: c7,
                                  radius: 40,
                                  child: Image.asset(
                                    "assets/images/chairlogg.png",
                                    height: 35,
                                    width: 35,
                                  ),
                                )),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _itemcount--;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_left,
                                      size: 35,
                                    )),
                                Text(
                                  _itemcount.toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _itemcount++;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_right,
                                      size: 35,
                                    )),
                              ],
                            ),
                            const Divider(),
                            const SizedBox(height: 15),
                            Material(
                              elevation: 2.0,
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30.0)),
                              child: Theme(
                                data: Theme.of(context)
                                    .copyWith(dividerColor: c16),
                                child: ExpansionTile(
                                  title: const Text('Blocked Out Dates'),
                                  tilePadding: const EdgeInsets.only(
                                      left: 30, right: 40),
                                  leading: const ImageIcon(
                                    AssetImage("assets/images/calender.png"),
                                    color: Color(0xFF6043F5),
                                    size: 24,
                                  ),
                                  children: [
                                    Container(
                                      alignment: Alignment.topCenter,
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: TableCalendar(
                                        firstDay: DateTime.utc(2010, 10, 16),
                                        lastDay: DateTime.utc(2030, 3, 14),
                                        focusedDay: DateTime.now(),
                                        daysOfWeekVisible: true,
                                        calendarStyle: const CalendarStyle(
                                          isTodayHighlighted: true,
                                          selectedTextStyle:
                                              TextStyle(color: Colors.white),
                                          todayDecoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF6043F5),
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
                                          leftChevronMargin:
                                              EdgeInsets.only(left: 70),
                                          rightChevronMargin:
                                              EdgeInsets.only(right: 74),
                                          rightChevronIcon: Icon(
                                            Icons.arrow_right,
                                            size: 20,
                                          ),
                                          leftChevronIcon: Icon(
                                            Icons.arrow_left,
                                            size: 20,
                                          ),
                                          titleTextStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Material(
                              elevation: 2.0,
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30.0)),
                              child: Theme(
                                data: Theme.of(context)
                                    .copyWith(dividerColor: c16),
                                child: ExpansionTile(
                                  title: const Text('Available Time'),
                                  tilePadding: const EdgeInsets.only(
                                      left: 30, right: 40),
                                  leading: const Icon(
                                    Icons.watch_later,
                                    color: Color(0xFF6043F5),
                                  ),
                                  childrenPadding: const EdgeInsets.all(20),
                                  children: [
                                    ListTile(
                                      title: const Text(
                                          'Morning Session\n6:00 AM - 12:00 PM'),
                                      trailing: CupertinoSwitch(
                                        activeColor: const Color(0xFF6043F5),
                                        value: _lights,
                                        onChanged: (bool value) {
                                          setState(() {
                                            _lights = value;
                                          });
                                        },
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _lights = !_lights;
                                        });
                                      },
                                    ),
                                    ListTile(
                                      title: const Text(
                                          'Afternoon Session\n12:00 PM - 06:00 PM'),
                                      trailing: Container(
                                        child: CupertinoSwitch(
                                          activeColor: const Color(0xFF6043F5),
                                          value: _lights1,
                                          onChanged: (bool value) {
                                            setState(() {
                                              _lights1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _lights1 = !_lights1;
                                        });
                                      },
                                    ),
                                    ListTile(
                                      title: const Text(
                                          'Morning Session\n6:00 AM-12:00PM'),
                                      trailing: CupertinoSwitch(
                                        activeColor: const Color(0xFF6043F5),
                                        value: _lights2,
                                        onChanged: (bool value) {
                                          setState(() {
                                            _lights2 = value;
                                          });
                                        },
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _lights2 = !_lights2;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
