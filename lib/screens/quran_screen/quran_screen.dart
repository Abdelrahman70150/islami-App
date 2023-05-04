import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/screens/sura_details_screen.dart';
import 'package:islami/sura_arg.dart';

import '../../const/constan.dart';

class QuranScreen extends StatefulWidget {
  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  List<String> soraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  List<int> soraLength=[7,286,200,176,120,165,206,75,129,109,123,111,43,52,99,128,111,110,
    98,135,112,78,118,64,77,227,93,88,69,60,34,30,73,54,45,83,182,88,75,85,54,53,89,59,37,
    35,38,29,18,45,60,49,62,55,78,96,29,22,24,13,14,11,11,18,12,12,30,52,52,44,28,28,20,56,
    40,31,50,40,46,42,29,19,36,25,22,17,19,26,30,20,15,21,11,8,8,19,5,8,8,11,11,8,3,9,5,4,7,3,6,3,5,4,5,6,
  ];
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/qur2an_screen_logo.png'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: mainColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'عدد الآيات',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:20),
              height: 44,
              width: 2,
              color: mainColor,
            ),
            Center(
              child: Text(
                'اسم السورة',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: mainColor,
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.pushNamed(
                  context, SuraDetailsScreen.routName,
                  arguments: SuraArgs(suraName: soraName[index], index: index)
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      soraLength[index].toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 2,
                    color: mainColor,
                  ),
                  Expanded(
                    child: Text(
                      soraName[index],
                      style: TextStyle(
                        fontSize: 25,
                          fontWeight: FontWeight.bold

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            itemCount: soraName.length,
          ),
        ),
      ],
    );
  }
}
