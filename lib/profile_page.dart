/// profile_page.dart
/// Author: Haojun Zhuang

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme.headline1;

    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          const SizedBox(height: 200.0),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/img10.jpeg',
                ),
                radius: 50,
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Text('Haojun', style: t),
                  Text('Zhuang', style: t),
                  Text('Age: 19', style: t),
                ],
              )
            ],
          ),
          const SizedBox(height: 100.0),
          Container(
            padding: EdgeInsets.only(left: 50.0, right: 20.0),
            child: Center(
                child: Text(
                    'I am a second year berkeley student major in computer science. Next to meet you all!',
                    style: t)),
          )
        ])));
  }
}
