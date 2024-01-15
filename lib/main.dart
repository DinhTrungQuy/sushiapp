import 'package:flutter/material.dart';
import 'package:sushiapp/pages/intro_page.dart';
import 'package:sushiapp/pages/menu_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
      routes: {
        '/intropage':(context) => IntroPage(),
        '/menupage': (context) => MenuPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
