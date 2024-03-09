import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/login_page.dart';
import 'package:flutter_learning/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MaterialApp(
          initialRoute: '/login',
          routes: {
            '/': (context) => const HomePage(),
            MyRoutes.loginRoute: (context) => const LoginPage(),
            MyRoutes.homeRoute: (context) => const HomePage(),
          },
        ));
  }
}
