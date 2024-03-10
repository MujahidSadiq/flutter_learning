import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/login_page.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MYTheme.LightTheme(context),
        darkTheme: MYTheme.darkTheme(context),
        home: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.homeRoute,
          routes: {
            '/': (context) => const HomePage(),
            MyRoutes.loginRoute: (context) => const LoginPage(),
            MyRoutes.homeRoute: (context) => const HomePage(),
          },
        ));
  }
}
