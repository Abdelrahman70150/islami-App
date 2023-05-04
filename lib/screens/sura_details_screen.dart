import 'package:flutter/material.dart';
import 'package:islami/sura_arg.dart';

class SuraDetailsScreen extends StatelessWidget {
static const String routName = 'suraDetails';

  @override
  Widget build(BuildContext context) {
    SuraArgs args =ModalRoute.of(context)?.settings.arguments as SuraArgs;
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

      ),
    );
  }
}
