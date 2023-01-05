import 'package:flutter/material.dart';
import 'package:protonn_app_ui/screen/Poblish_video_Screen/Publish_video_screen.dart';
import 'package:protonn_app_ui/screen/Send_to_indivdual_Screen/Send_to_indivdual_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const PoblishVideoScreen(),
        'SendtoIndivdualScreen': (context) => const SendtoIndivdualScreen()
      },
    );
  }
}
