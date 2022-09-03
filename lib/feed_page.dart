/// feed_page.dart
/// Author: Haojun Zhuang

import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    //adding images in the asset directory to "images"
    //images are named from img1.jpeg to img9.jpeg
    for (int i = 1; i < 10; i++) {
      images.add(Container(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/img$i.jpeg')));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Feeds'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              itemExtent: 500,
              children: images,
            ),
          ),
        ));
  }

  // Images to be displayed in list view
  List<Widget> images = <Widget>[];
}
