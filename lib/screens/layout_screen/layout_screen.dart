import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/quran_screen/quran_screen.dart';
import 'package:islami/screens/radio_screen/radio_screen.dart';
import 'package:islami/screens/sebha_screen/sebha_screen.dart';
import 'package:islami/screens/settings_screen/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LayoutScreen extends StatefulWidget {
  static const String routName ='LayoutScreen';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex=4;
  List<Widget> screens =[
    SettingsScreen(),
    RadioScreen(),
    SebhaScreen(),
    HadethScreen(),
    QuranScreen(),

  ];
  @override
  Widget build(BuildContext context) {
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
          centerTitle: true,
          title:  Text(
            AppLocalizations.of(context)!.islami,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          currentIndex: currentIndex,

          items:  [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,
                  size: 25,),
                label: AppLocalizations.of(context)!.settings,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage(
                'assets/images/icon_radio.png'
              ),
                  size: 30,
            ),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_sebha.png',
                  ),
                  size: 30,
                ),
                label:AppLocalizations.of(context)!.praise,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_hadeth.png'
                  ),
                  size: 30,
                ),
                label:AppLocalizations.of(context)!.hadith,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_quran.png'
                  ),
                  size: 30,
                ),
                label: AppLocalizations.of(context)!.quran,
            ),


          ],
        ),
        body: screens[currentIndex],
      ),
    );
  }
}
