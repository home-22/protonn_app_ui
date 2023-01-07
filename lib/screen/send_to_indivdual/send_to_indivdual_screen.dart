// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:protonn_app_ui/screen/send_to_indivdual/components/add_new_client.dart';
import 'package:protonn_app_ui/screen/send_to_indivdual/components/list_all_clients.dart';
import 'package:protonn_app_ui/screen/send_to_indivdual/components/to_box_info.dart';

import 'widget/button_send_message.dart';

class SendtoIndivdualScreen extends StatelessWidget {
  const SendtoIndivdualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Send to indivdual',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3)),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ToboxInfo(
                  icon: Icons.dataset,
                  title: 'PRIVATE',
                  description: 'Can only be \nviewed by the\nclient',
                ),
                ToboxInfo(
                  icon: Icons.badge,
                  title: 'SECURE',
                  description:
                      'Cannot be shared\n of faworded with \n anyone else',
                ),
                ToboxInfo(
                  icon: Icons.data_object_sharp,
                  title: 'EXCLUSIVE',
                  description: 'Cannot be\n downloaded or\n saved',
                ),
              ],
            ),
            const AddNewClient(
                icon: Icons.people_rounded, title: 'Add new client'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: const [
                  Text('All Clients'),
                  Spacer(),
                  Text(
                    'Unselect All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListAllClients(
                image: const AssetImage('assets/images/profile1.png'),
                title: 'Floyd Miles',
                icon: Icons.done),
            ListAllClients(
                image: const AssetImage('assets/images/profile2.png'),
                title: 'Darrell Steward',
                icon: Icons.done),
            ListAllClients(
                image: const AssetImage('assets/images/profile3.png'),
                title: 'Theresa Webb',
                icon: Icons.done),
            ListAllClients(
                image: const AssetImage('assets/images/profile4.png'),
                title: 'Cody Fisher',
                icon: Icons.done),
            const ButtonSendMessage()
          ],
        ),
      ),
    );
  }
}
