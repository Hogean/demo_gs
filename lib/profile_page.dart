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
    final t1 = Theme.of(context).textTheme.bodyText1;
    final t2 = Theme.of(context).textTheme.headline1;

    return SafeArea(
      child: Center(
          child: Stack(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width + 200, 200.0)),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 169, 21, 21),
                      Color.fromARGB(255, 187, 26, 171),
                    ])),
          ),
          const SizedBox(height: 100.0),
          Text('Haojun Zhuang', style: t2),
          Text('21', style: t2),
          const SizedBox(height: 50.0),
          Container(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Center(
                child: Text(
              'I am a second year berkeley student major in computer science and cognitive science. Next to meet you all!',
              style: t1,
              textAlign: TextAlign.center,
            )),
          )
        ]),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 150,
            ),
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/img10.jpeg',
              ),
              radius: 90,
            ))
          ],
        )
      ])),
    );
  }
}
