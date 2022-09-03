/// post_page.dart
/// Author: Haojun Zhuang

import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: const [SizedBox(height: 200.0), PostList()],
    )));
  }
}

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: SizedBox(
              height: 200.0,
              width: 300.0,
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 45,
                      child: Center(
                          child: Text(
                        posts[index],
                        style: Theme.of(context).textTheme.headline1,
                      )),
                    );
                  }))),
      const SizedBox(height: 100.0),
      Form(
          key: _formKey,
          child: Container(
            width: 300,
            height: 50,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  autofocus: true,
                  onSaved: (String? value) {
                    content = value;
                  },
                ),
              ),
              IconButton(
                  icon: const Icon(Icons.upload),
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (content != null) {
                      setState(() {
                        posts.add(content!);
                      });
                    }
                  }),
            ]),
          )),
    ]);
  }

  // posts uploaded
  List<String> posts = <String>[];

  // the form key of the textform
  final _formKey = GlobalKey<FormState>();

  // text content in the textformfield
  String? content;
}
