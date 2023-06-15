import 'package:flutter/material.dart';
import 'package:medical_app/screens/bottem_navigation_bar.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/notification_screen.dart';
import 'package:medical_app/screens/report_page.dart';
import 'package:medical_app/screens/schedule_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottem_Navigation_barr(),
      debugShowCheckedModeBanner: false,
    );
  }
}
