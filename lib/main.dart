import 'package:flutter/material.dart';
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'about_us',
      routes: {
        'home': (context) => const HomeScreen(),
        'about_us': (context) => const AboutScreen(),
      },
      theme: ThemeData(
        primaryColorLight: Colors.blue,
      ),
    );
  }
}
