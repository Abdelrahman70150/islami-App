import 'package:flutter/material.dart';
import 'package:islami/const/constan.dart';

class MyThemeData{


  static ThemeData lightTheme =ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: mainColor,
        size: 30,
      )
    ),
  );


  static ThemeData darkTheme =ThemeData();


}