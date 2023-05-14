import 'package:flutter/material.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/screens/settings_screen/language_bottom_sheet.dart';
import 'package:islami/screens/settings_screen/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         // Theme Change
         Text(
          AppLocalizations.of(context)!.theme,
           style: Theme.of(context).textTheme.bodySmall?.copyWith(
           color: provider.isDarkEnabled()? Colors.white:
               Colors.black
         ),
         ),
         SizedBox(height: 10,),
         InkWell(
           onTap: (){
             showThemeBottomSheet(context);
           },
           child: Container(
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               border: Border.all(color:provider.isDarkEnabled()? yellowDarkColor: mainLightColor),

             ),
             child: Padding(
               padding: const EdgeInsets.all(11.0),
               child: Text(
                 provider.isDarkEnabled()?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,
                 style: Theme.of(context).textTheme.bodySmall,
               ),
             ),
           ),
         ),
         // Language Change
         SizedBox(height: 35,),
         Text(
    AppLocalizations.of(context)!.language,
             style: Theme.of(context).textTheme.bodySmall?.copyWith(
             color:provider.isDarkEnabled()? Colors.white: Colors.black,
         ),
         ),
         SizedBox(height: 10,),
         InkWell(
           onTap: (){
             showLanguageBottomSheet(context);
           },
           child: Container(
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               border: Border.all(color: provider.isDarkEnabled()?yellowDarkColor: mainLightColor),
             ),
             child: Padding(
               padding: const EdgeInsets.all(11.0),
               child: Text(
                 provider.languageCode=='en'?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,
                 style: Theme.of(context).textTheme.bodySmall,
               ),
             ),
           ),
         ),

       ],
      ),
    );
  }
  void showThemeBottomSheet(context){
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),),
      ),
      builder:(context)=>ThemeBottomSheet(),
    );
  }
  void showLanguageBottomSheet(context){
    showModalBottomSheet(context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      builder:(context)=>LanguageBottomSheet(),
    );
  }



}
