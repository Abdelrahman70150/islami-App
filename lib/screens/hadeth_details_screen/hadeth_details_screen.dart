import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/arg/hadeth_arg.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'hadethDetails';
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
            provider.getBackgroundImage(context),
            ),
          )
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.hadethName,
            ),
          ),
          body: Center(
            child: Card(
              color:Brightness.light == Theme.of(context).brightness?
              Colors.white.withOpacity(.40):mainDarkColor.withOpacity(.4),
              elevation: 1000 ,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: mainLightColor.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child:Container(
                  color: Colors.transparent,
                  height: 652,
                  width: 354,
                  child:
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Center(
                      child: Text(
                        args.content,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                    ),
              ),
            ),
          )

      ),
    );
  }
}



