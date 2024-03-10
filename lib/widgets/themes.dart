import 'package:flutter/material.dart';

class MYTheme{
  // ignore: non_constant_identifier_names
  static ThemeData LightTheme(BuildContext context)=>  ThemeData(
            primarySwatch: Colors.deepPurple,
            appBarTheme: const AppBarTheme(color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black,),
            
            )
            );


             static ThemeData darkTheme(BuildContext context)=>  ThemeData(
            primarySwatch: Colors.deepPurple,
            appBarTheme: const AppBarTheme(color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black,),
            
            )
            );
}

 


            