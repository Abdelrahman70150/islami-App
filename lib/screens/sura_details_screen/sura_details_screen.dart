import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/const/constan.dart';
import 'package:islami/arg/sura_arg.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'suraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List verse = [];

  @override
  Widget build(BuildContext context) {
    var providre =Provider.of<SettingsProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verse.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          Brightness.dark == Theme.of(context).brightness?
          'assets/images/dark_bg.png': 'assets/images/default_bg.png',
        ),
      )),
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:  Text(
              'إسلامي',
            ),
          ),
          body: Center(
            child: Card(
              color:Brightness.light == Theme.of(context).brightness?
              Colors.white.withOpacity(.40):mainDarkColor.withOpacity(.4),
              elevation: 1000,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: mainLightColor.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                  color: Colors.transparent,
                  height: 652,
                  width: 354,
                  child: Column(
                    children: [
                      Text(
                        'سورة ${args.suraName}',
                        style:Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold,
                        color: Brightness.light == Theme.of(context).brightness? Colors.black: yellowDarkColor),
                      ),
                      Divider(
                        thickness: 1,
                        color: Brightness.light==Theme.of(context).brightness?
                        mainLightColor:yellowDarkColor,
                        endIndent: 90,
                        indent: 90,
                      ),
                      verse.isEmpty
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: mainLightColor,
                            ))
                          : Expanded(
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) => Center(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                      '${verse[index]} (${index + 1})',
                                      style:Theme.of(context).textTheme.bodySmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )),
                                itemCount: verse.length,
                                separatorBuilder: (context, index) =>
                                     Divider(
                                  thickness: 1,
                                      color: Brightness.light==Theme.of(context).brightness?
                                      mainLightColor:yellowDarkColor,
                                  endIndent: 20,
                                  indent: 20,
                                ),
                              ),
                            ),
                    ],
                  )),
            ),
          )),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split('\n');
    verse = lines;
    setState(() {});
  }
}
