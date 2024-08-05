import 'package:flutter/material.dart';
import 'package:my_profile_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ProfileApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:Home_page()
    );
  }
}