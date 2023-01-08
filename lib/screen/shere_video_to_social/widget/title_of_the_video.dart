import 'package:flutter/material.dart';

class Titleofthevideo extends StatelessWidget {
  const Titleofthevideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Title of the video',
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Just posted',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  '1:45 min',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
