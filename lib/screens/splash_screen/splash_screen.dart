// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import '../layout_screen/layout_screen.dart';
//
//
// class SplashScreen extends StatelessWidget {
//   static const String routName ='splashScreen';
//   @override
//   Widget build(BuildContext context) {
//     Timer(
//         const Duration(seconds: 2),
//             ()=>Navigator.pushReplacementNamed(context, LayoutScreen.routName)
//     );
//     return Scaffold(
//       body:
//       Stack(
//         children: [
//           Image.asset('assets/images/splash_screen.png',
//             fit:BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,
//           ),
//         ],
//       ),
//
//
//     );
//   }
// }
