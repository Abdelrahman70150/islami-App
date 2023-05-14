import 'package:flutter/material.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

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
                provider.enableLightMode();
                },
              child:
              provider.isDarkEnabled()?
              getUnSelectedTheme( AppLocalizations.of(context)!.light, context,Colors.white):
                  getSelectedTheme( AppLocalizations.of(context)!.light, context,mainLightColor)
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                provider.enableDarkMode();
              },
                child:
                provider.isDarkEnabled()?
                getSelectedTheme( AppLocalizations.of(context)!.dark, context,yellowDarkColor):
                    getUnSelectedTheme( AppLocalizations.of(context)!.dark, context,Colors.black),
            ),
          ],
        ),
      ),

    );
  }
  Widget getSelectedTheme(String title, context, Color color){
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

  Widget getUnSelectedTheme (String title, context,Color color){
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
