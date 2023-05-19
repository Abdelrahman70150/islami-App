

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/const/my_theme.dart';
import 'package:islami/network/local/shared_pref.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/screens/hadeth_details_screen/hadeth_details_screen.dart';
import 'package:islami/screens/layout_screen/layout_screen.dart';

import 'package:islami/screens/sura_details_screen/sura_details_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPref.pref= await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
    create: (BuildContext context)=>SettingsProvider()..init(),
      child: MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        // SplashScreen.routName: (context)=>SplashScreen(),
        LayoutScreen.routName: (context)=>LayoutScreen(),
        SuraDetailsScreen.routName:(c)=>SuraDetailsScreen(),
         HadethDetailsScreen.routName:(c)=>HadethDetailsScreen(),
      },
      initialRoute: LayoutScreen.routName,
          theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.languageCode),

    );
  }
}
