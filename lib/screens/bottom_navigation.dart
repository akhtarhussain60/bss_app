 import 'package:bss_app/screens/favouritie.dart';
import 'package:bss_app/screens/homescreen.dart';
import 'package:bss_app/screens/messagescreen.dart';
import 'package:bss_app/screens/reservationscreen.dart';
import 'package:bss_app/screens/settingscreen.dart';
import 'package:bss_app/src/theme.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {

  int? tabindex ;

   BottomNavigationScreen({Key? Key,@required this.tabindex, super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _currentindex = 0;

  static final List _widgetOptions = [
    const HomeScreen(),
    const FavouritieScreen(),
    const ReservationScreen(),
    const MessageScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentindex = widget.tabindex!;
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_currentindex],
      ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: _currentindex,
        backgroundColor: c7,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(color: c12),
        selectedItemColor: c7,
        unselectedLabelStyle: const TextStyle(color: c6),
        iconSize: 20,
         onTap: ((value) {
           setState(() {
             _currentindex = value;
            });
          }
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
            Icons.home,
            size: 25,
            color: c15),
            icon: Icon(
            Icons.home,
            size: 25,
            color: c14),
            label: ""
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
            Icons.favorite,
            color: c15,
            size: 25),
            icon: Icon(
            Icons.favorite,
            color: c14,
            size: 25),
            label: ""
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.calendar_month,
            color: c15,
            size: 25),
            icon: Icon(
            Icons.calendar_month,
            color: c14,
            size: 25,),
            label: ""
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.chat_bubble,
            size: 25,
            color: c15,
          ),
            icon: Icon(
            Icons.chat_bubble,
            size: 25,
            color: c14,
          ),
           label: "",),
          BottomNavigationBarItem(
            activeIcon: Icon(
            Icons.settings,
            size: 25,
            color: c15,
          ),
            icon: Icon(
            Icons.settings,
            size: 25,
            color: c14,
          ),
            label: ""
          ),
         ],
       ),
    );
  }
}