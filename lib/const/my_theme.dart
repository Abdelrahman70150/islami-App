import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';

class MyThemeData{


  static ThemeData lightTheme =ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
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
        color: mainColor,
        size: 30,
      )
    ),
  );


  static ThemeData darkTheme =ThemeData();


}