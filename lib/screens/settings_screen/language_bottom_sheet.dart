import 'package:flutter/material.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: provider.isDarkEnabled()?mainDarkColor: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: (){
                  provider.changeLanguage('en');
                },
                child:
                provider.languageCode=='en'?
                    // Row Selected
                getSelectedLanguage(AppLocalizations.of(context)!.english, context, provider.themeMode==ThemeMode.dark? yellowDarkColor: mainLightColor):
                    // text unselected
                getUnSelectedLanguage( AppLocalizations.of(context)!.english, context,provider.themeMode==ThemeMode.dark? Colors.white: Colors.black)
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                provider.changeLanguage('ar');
              },
              child:
              provider.languageCode=='ar'?
              getSelectedLanguage(AppLocalizations.of(context)!.arabic, context, provider.themeMode==ThemeMode.dark? yellowDarkColor: mainLightColor):
              getUnSelectedLanguage( AppLocalizations.of(context)!.arabic, context,provider.themeMode==ThemeMode.dark? Colors.white: Colors.black),
            ),
          ],
        ),
      ),

    );
  }
  Widget getSelectedLanguage(String title, context, Color color) {
    return  Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: color,
            ),),
          Icon(
              Icons.check,
              color: color),
        ],
      ),
    );
  }

  Widget getUnSelectedLanguage (String title, context,Color color){
    return  Container(
      width: double.infinity,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color:color,
        ),
      ),
    );
  }
}
