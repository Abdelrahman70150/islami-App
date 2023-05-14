import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/arg/hadeth_arg.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/screens/hadeth_details_screen/hadeth_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
      Divider(
        thickness: 1,
        color:Brightness.light == Theme.of(context).brightness?
      mainLightColor: yellowDarkColor,
      ),
      Text(
    AppLocalizations.of(context)!.praise,
      style: Theme.of(context).textTheme.bodyLarge
      ),
        Divider(
          thickness: 1,
          color: Brightness.light == Theme.of(context).brightness?
          mainLightColor: yellowDarkColor,
        ),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=>InkWell(
            onTap: (){
              Navigator.pushNamed(context, HadethDetailsScreen.routName,
                arguments: allAhadeth[index],

              );
            },
            child: Text(
             allAhadeth[index].hadethName,
            textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          itemCount: allAhadeth.length,
          separatorBuilder: (contex,index)=>SizedBox(
            height: 10,
          ),
          ),
        ),
      ],
    );
  }

void loadFile(){
  rootBundle.loadString('assets/files/ahadeth.txt').then((ahadethFile) {
    //دى الأحاديث كلها
    List<String> AhadethContent = ahadethFile.split('#');
    // همشى على كل حديث اقطعه
    for(int i=0 ; i<AhadethContent.length; i++){
      int lastIndex =AhadethContent[i].trim().indexOf('\n');
      String title =AhadethContent[i].trim().substring(0,lastIndex);
      String content = AhadethContent[i].trim().substring(lastIndex+1);
    // for(int i=0 ; i<AhadethContent.length; i++){
    //   List<String> SingleAhadethLines = AhadethContent[i].trim().split('\n');
    //   // تايتل الحديث نفسه
    //   String title = SingleAhadethLines[0];
    //   //شيلت منه التايتل
    //   SingleAhadethLines.removeAt(0);
    //   // بقيت الحديث من غير التايتل
    //   List<String> content =SingleAhadethLines;
      HadethModel hadethModel = HadethModel(content: content, hadethName: title);
      allAhadeth.add(hadethModel);

    setState(() {

    });
    }

  }).catchError((error){});
}
}
