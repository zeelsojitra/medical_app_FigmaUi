import 'package:flutter/material.dart';
import 'package:medical_app/screens/notification_screen.dart';
import 'package:medical_app/screens/report_page.dart';
import 'package:medical_app/screens/schedule_page.dart';

import 'home.dart';

class Bottem_Navigation_barr extends StatefulWidget {
  const Bottem_Navigation_barr({Key? key}) : super(key: key);

  @override
  State<Bottem_Navigation_barr> createState() => _Bottem_Navigation_barrState();
}

class _Bottem_Navigation_barrState extends State<Bottem_Navigation_barr> {
  int selected = 0;
  List screen = [
    Home_Page(),
    Schedule_Page(),
    Report_page(),
    Notification_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        selectedItemColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
                size: 20,
              )),
          BottomNavigationBarItem(
              label: "Schedule",
              icon: Icon(
                Icons.calendar_today,
                color: Colors.grey,
                size: 20,
              )),
          BottomNavigationBarItem(
              label: "Report",
              icon: Icon(
                Icons.note_add,
                color: Colors.grey,
                size: 20,
              )),
          BottomNavigationBarItem(
              label: "Notifications",
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 20,
              )),
        ],
      ),
    );
  }
}
