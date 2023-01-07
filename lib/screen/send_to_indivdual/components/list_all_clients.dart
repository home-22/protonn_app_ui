// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ListAllClients extends StatelessWidget {
  AssetImage image;
  final String title;
  final IconData icon;
  ListAllClients(
      {Key? key, required this.image, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: image,
      ),
      subtitle: Text(title),
      trailing: CircleAvatar(
        radius: 12,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
