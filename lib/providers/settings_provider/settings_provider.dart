
import 'package:flutter/material.dart';
import 'package:islami/network/local/shared_pref.dart';

class SettingsProvider extends ChangeNotifier {
 ThemeMode themeMode = ThemeMode.dark;
 String languageCode ='ar';

 void init() {
  languageCode = SharedPref.getLang();
  String  myTheme = SharedPref.getTheme();
  if(myTheme=='dark'){
   enableDarkMode();
  }else{
  enableLightMode();
  }

 }

void changeLanguage(newLangCode){
languageCode = newLangCode;
SharedPref.setLang(newLangCode);
notifyListeners();
}
 void enableDarkMode() {
  themeMode = ThemeMode.dark;
  SharedPref.setTheme('dark');
  notifyListeners();
 }

 void enableLightMode() {
  themeMode = ThemeMode.light;
  SharedPref.setTheme('light');
  notifyListeners();
 }

 String getBackgroundImage(context) {
  return
   Brightness.dark == Theme.of(context).brightness ?
  'assets/images/dark_bg.png' : 'assets/images/default_bg.png';
 }


 bool isDarkEnabled(){
  return themeMode == ThemeMode.dark;
 }

 bool isEnglishEnabled(){
  return true;
 }

}