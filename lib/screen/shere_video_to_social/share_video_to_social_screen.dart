// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:protonn_app_ui/screen/shere_video_to_social/widget/finish_button.dart';
import 'package:protonn_app_ui/screen/shere_video_to_social/widget/title_of_the_video.dart';

class SherevideotosocialScreen extends StatelessWidget {
  const SherevideotosocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Share video to social',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 285,
            width: 180,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.black87.withOpacity(0.4),
                    child: const Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black87.withOpacity(0.3)),
                  alignment: Alignment.center,
                  child: const Text(
                    '00 23',
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                ),
              ],
            ),
          ),
          const Titleofthevideo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black87.withOpacity(0.1),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.download,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/share.png',
                  height: 50,
                  width: 100,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 5),
            child: Row(
              children: const [
                Text(
                  'Download',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                Spacer(),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 20),
          const FinishButton()
        ],
      ),
    );
  }
}
