// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SherevideotosocialScreen extends StatelessWidget {
  const SherevideotosocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Share video to social'),
        leading: GestureDetector(child: const Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
