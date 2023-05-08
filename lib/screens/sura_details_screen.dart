import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/arg/sura_arg.dart';


class SuraDetailsScreen extends StatefulWidget {
static const String routName = 'suraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List verse =[];

  @override
  Widget build(BuildContext context) {
    SuraArgs args =ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if(verse.isEmpty){
      loadFile(args.index);
    }

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
            args.suraName,
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
              child:Column(
                children: [
                  Text(
                    'سورة ${args.suraName}',
                    style: GoogleFonts.elMessiri(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),

                  ),
                  Divider(
                    thickness: 1,
                  color: mainColor,
                  endIndent: 90,
                  indent: 90,
                  ),
                  verse.isEmpty? Center(child: CircularProgressIndicator(color: mainColor,)):
                  const Divider(thickness: 1,
                  color: mainColor,
                  endIndent: 90,
                  indent: 90,),
                  verse.isEmpty? const Center(child: CircularProgressIndicator(color: mainColor,))
                      :Expanded(
                        child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              '${verse[index]} (${index+1})',
                      style: GoogleFonts.elMessiri(
                        fontSize: 20,
                      ),
                    textAlign: TextAlign.center,
                  ),
                          ),
                        )),
                    itemCount: verse.length,
                          separatorBuilder: (context,index)=>
                              const Divider(
                        thickness: 1,color: mainColor,
                            endIndent: 20,
                            indent: 20,
                    ),
                        ),
                      ),

                ],
              )
            ),
          ),
        )

      ),
    );
  }

  Future<void> loadFile (int index) async{
    String sura =await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines=sura.split('\n');
    verse =lines;
    setState(() {
      
    });
  }
}
