import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:protonn_app_ui/screen/poblish_video/publish_video_screen.dart';
import 'package:protonn_app_ui/screen/send_to_indivdual/send_to_indivdual_screen.dart';

import 'package:protonn_app_ui/screen/shere_video_to_social/Share_video_to_social_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protonn App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme().copyWith(),
      ),
      routes: {
        '/': (context) => const PoblishVideoScreen(),
        'SendtoIndivdualScreen': (context) => const SendtoIndivdualScreen(),
        'SharevideotoScreen': (context) => const SherevideotosocialScreen(),
        'SharevideotosocialScreen': (context) =>
            const SherevideotosocialScreen()
      },
    );
  }
}
