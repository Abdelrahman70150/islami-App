import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SebhaScreen extends StatefulWidget {


  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int tasbehCount =0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 12,),
          // sebha photo
          Image.asset(
              Brightness.light == Theme.of(context).brightness?
              'assets/images/sebha.png':'assets/images/sebha_dark.png'),
          SizedBox(height: 25,),
          //number of tasbeh text
          Text(
            AppLocalizations.of(context)!.numberOfPraises,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20,),
          // number of tasbeh
          Container(
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Brightness.light == Theme.of(context).brightness?
              mainLightColor.withOpacity(.57): mainDarkColor.withOpacity(.75),
            ),
            child: Center(
              child: Text(
                '$tasbehCount',
                style: GoogleFonts.elMessiri(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          SizedBox(height: 26,),
          // tasbeh button
          InkWell(
            onTap: (){
             setState(() {
               tasbehCount++;
             });
            },
            child: Container(
              height: 51,
              width: 137,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Brightness.light == Theme.of(context).brightness?
                mainLightColor: yellowDarkColor,
              ),
              child: Center(
                child: Text(
                  'سبحان الله',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color:  Brightness.light == Theme.of(context).brightness?
                    Colors.white: mainDarkColor,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
