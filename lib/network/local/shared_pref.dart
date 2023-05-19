import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
 static late SharedPreferences pref;

static Future<void> setTheme (String theme)async{
 await pref.setString("theme", theme);
 }
 static String getTheme (){
 return pref.getString("theme")??'light';
 }

 static Future<void> setLang(String lang)async{
 await pref.setString('lang', lang);
 }
 static String getLang(){
 return pref.getString('lang')??'en';
 }
}