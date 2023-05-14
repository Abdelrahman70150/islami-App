import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
class MyThemeData{


  static ThemeData lightTheme =ThemeData(
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor:Colors.black,
      backgroundColor: mainLightColor,
      type:BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedLabelStyle: GoogleFonts.elMessiri(
      ),
      unselectedLabelStyle: GoogleFonts.elMessiri(),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      iconTheme: IconThemeData(
        color: mainLightColor,
        size: 30,
      )
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
      ),
    ),

    primaryColor: mainLightColor,
  );


  static ThemeData darkTheme =ThemeData(
    brightness: Brightness.dark,
    primaryColor: mainDarkColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor:yellowDarkColor,
      backgroundColor: mainDarkColor,
      type:BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedLabelStyle: GoogleFonts.elMessiri(
        color:yellowDarkColor,
      ),
    ),

    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: yellowDarkColor,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.white,
      ),
    ),

    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        )
    ),
  );


}