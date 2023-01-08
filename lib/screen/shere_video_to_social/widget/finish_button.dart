import 'package:flutter/material.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: const Text(
          'Finish',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
