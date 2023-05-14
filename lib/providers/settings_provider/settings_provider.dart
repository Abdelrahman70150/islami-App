
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
 ThemeMode themeMode = ThemeMode.dark;
 String languageCode ='ar';

void changeLanguage(newLangCode){
languageCode = newLangCode;
notifyListeners();
}
 void enableDarkMode() {
  themeMode = ThemeMode.dark;
  notifyListeners();
 }


 void enableLightMode() {
  themeMode = ThemeMode.light;
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