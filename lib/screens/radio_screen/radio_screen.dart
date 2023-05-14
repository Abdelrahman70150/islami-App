import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(height: 74,),
        Text(
            AppLocalizations.of(context)!.broadcastingTheHolyQuran,
        style:Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 65,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},

              icon: Icon(
                Icons.skip_previous,
                color:  Brightness.light == Theme.of(context).brightness?
                mainLightColor: yellowDarkColor,
              ),
              iconSize: 40,
              alignment: AlignmentDirectional.center,
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.play_arrow,
                color:  Brightness.light == Theme.of(context).brightness?
                mainLightColor: yellowDarkColor,
              ),
              iconSize: 55,
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.only(),
            ),
            IconButton(onPressed: (){},
              icon: Icon(
                Icons.skip_next,
                color:  Brightness.light == Theme.of(context).brightness?
                mainLightColor: yellowDarkColor,
              ),
              iconSize: 40,
              alignment: AlignmentDirectional.center,
            ),
          ],
        )
      ],
    );
  }
}
