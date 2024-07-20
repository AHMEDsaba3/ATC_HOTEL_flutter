import 'package:flutter/material.dart';
import 'package:task9/Rooms.dart';
import 'package:task9/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.orangeAccent,titleTextStyle: TextStyle(color: Colors.white,fontSize: 25)),
        useMaterial3: true,
      ),
      home: homepage(),
      routes: {
        '/homepage':(context)=>homepage(),
        '/RoomsPane':(context)=>Rooms()
      }
    );
  }
}
