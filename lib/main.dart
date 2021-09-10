import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page/calendar_page.dart';
import 'package:hotels/home/homepage.dart';

//variable couleur
const d_green = Color(0xFF54D3C2);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotels Booking',
        home: HomePage());
  }
}
