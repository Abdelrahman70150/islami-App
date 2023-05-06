import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/quran_screen/quran_screen.dart';
import 'package:islami/screens/radio_screen/radio_screen.dart';
import 'package:islami/screens/sebha_screen/sebha_screen.dart';

class LayoutScreen extends StatefulWidget {
  static const String routName ='LayoutScreen';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex=3;
  List<Widget> screens =[
    RadioScreen(),
    SebhaScreen(),
    HadethScreen(),
    QuranScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
         image: AssetImage(
              'assets/images/default_bg.png'
          ),
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(
            'إسلامي',
            style:  GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          currentIndex:currentIndex,
          backgroundColor: mainColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage(
                'assets/images/icon_radio.png'
              ),
                  size: 30,
            ),
              label: "الراديو"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_sebha.png',
                  ),
                  size: 30,
                ),
                label: 'التسبيح'
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_hadeth.png'
                  ),
                  size: 30,
                ),
                label: 'الأحاديث',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/icon_quran.png'
                  ),
                  size: 30,
                ),
                label: 'القرأن'
            ),

          ],
        ),
        body: screens[currentIndex],
      ),
    );
  }
}
