import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/arg/hadeth_arg.dart';
import 'package:islami/const/constan.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'hadethDetails';
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/default_bg.png',
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
              color: Colors.white.withOpacity(.40),
              elevation: 1000 ,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: mainColor.withOpacity(.2),
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
                        style: GoogleFonts.elMessiri(
                          fontSize: 20,
                        ),
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



