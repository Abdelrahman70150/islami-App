import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';

class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            'assets/images/radio_image.png'
        ),
        SizedBox(height: 74,),
        Text(
          'إذاعة القرآن الكريم',
          style: GoogleFonts.elMessiri(
              fontSize: 25
          ),
        ),
        SizedBox(height: 65,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},
              icon: Icon(
                Icons.skip_previous,
                color: mainColor,
              ),
              iconSize: 40,
              alignment: AlignmentDirectional.center,
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.play_arrow,
                color: mainColor,
              ),
              iconSize: 55,
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.only(),
            ),
            IconButton(onPressed: (){},
              icon: Icon(
                Icons.skip_next,
                color: mainColor,
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
