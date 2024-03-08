import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MaterialApp(
          initialRoute: '/home',
          routes: {
            '/login': (context) => const HomePage(),
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        ));
  }
}
