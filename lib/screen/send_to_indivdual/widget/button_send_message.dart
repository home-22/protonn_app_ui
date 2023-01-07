// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonSendMessage extends StatelessWidget {
  const ButtonSendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'SharevideotosocialScreen');
        },
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade500),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Send message',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ),
              Spacer(),
              Text(
                '8 Selected',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white54,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
