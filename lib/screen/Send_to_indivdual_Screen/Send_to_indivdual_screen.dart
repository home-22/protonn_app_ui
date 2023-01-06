// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

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
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.black54,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              Container(
                height: 40,
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
                    Padding(
                      padding: EdgeInsets.symmetric(),
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [Private, Secure, Excusive],
              ),
              Addnewclient,
              allclients,
              SendMessage,
            ],
          ),
        ),
      ),
    );
  }

  Widget get Private => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
        child: Column(
          children: const [
            Icon(
              Icons.desktop_access_disabled,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Text(
              'PRIVATE',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Can only be \nviewed by the\nclient',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            )
          ],
        ),
      );

  Widget get Secure => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
        child: Column(
          children: const [
            Icon(
              Icons.lock,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Text(
              'SECURE',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Cannot be shared\n of faworded with \n anyone else',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            )
          ],
        ),
      );
  Widget get Excusive => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
        child: Column(
          children: const [
            Icon(
              Icons.save_as_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Text(
              'EXCLUSIVE',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Cannot be\n downloaded or\n saved',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            )
          ],
        ),
      );
  Widget get Addnewclient => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 0,
        ),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.people_alt,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'Add new client',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
  Widget get allclients => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Text('All Clients'),
                Spacer(),
                Text(
                  'Unselect All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
              subtitle: Text('Floyd Miles'),
              trailing: Icon(Icons.add_task_outlined),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
              subtitle: Text('Darrell Steward'),
              trailing: Icon(Icons.add_task_outlined),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
              subtitle: Text('Theresa Webb'),
              trailing: Icon(Icons.add_task_outlined),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
              subtitle: Text('Cody Fisher'),
              trailing: Icon(Icons.add_task_outlined),
            )
          ],
        ),
      );

  Widget get SendMessage => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
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
                )
              ],
            ),
          ),
        ),
      );
}
