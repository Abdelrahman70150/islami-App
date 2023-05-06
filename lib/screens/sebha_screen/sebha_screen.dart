import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';

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
          Image.asset('assets/images/sebha.png'),
          SizedBox(height: 25,),
          //number of tasbeh text
          Text(
            'عدد التسبيحات',
            style:  GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20,),
          // number of tasbeh
          Container(
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:mainColor.withOpacity(.57),
            ),
            child: Center(
              child: Text(
                '${tasbehCount}',
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
                color:mainColor,
              ),
              child: Center(
                child: Text(
                  'سبحان الله',
                  style:  GoogleFonts.elMessiri(
                    color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
