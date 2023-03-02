import 'package:flutter/material.dart';
import 'package:speed_code/home_pages/main_screen.dart';
import 'package:speed_code/home_pages/my_home_page.dart';
import 'package:speed_code/home_pages/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
