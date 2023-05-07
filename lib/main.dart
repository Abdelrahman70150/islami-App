import 'package:flutter/material.dart';
import 'package:islami/const/my_theme.dart';
import 'package:islami/screens/hadeth_details_screen/hadeth_details_screen.dart';
import 'package:islami/screens/layout_screen/layout_screen.dart';

import 'package:islami/screens/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // SplashScreen.routName: (context)=>SplashScreen(),
        LayoutScreen.routName: (context)=>LayoutScreen(),
        SuraDetailsScreen.routName:(c)=>SuraDetailsScreen(),
         HadethDetailsScreen.routName:(c)=>HadethDetailsScreen(),
      },
      initialRoute: LayoutScreen.routName,

      theme:MyThemeData.lightTheme,


    );
  }
}
