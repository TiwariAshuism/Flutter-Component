import 'package:flutter/material.dart';

import 'pages/main_content.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Montserrat', accentColor: Colors.deepOrange),
    home: const MyBlog(),
  ));
}

class MyBlog extends StatefulWidget {
  const MyBlog({Key? key}) : super(key: key);

  @override
  _MyBlogState createState() => _MyBlogState();
}

class _MyBlogState extends State<MyBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),*/
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            const IconButton(icon: const Icon(Icons.search), onPressed: null),
            const IconButton(
                icon: const Icon(Icons.bookmark_border), onPressed: null),
            const IconButton(icon: Icon(Icons.person_outline), onPressed: null),
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80.0, left: 24, right: 24, bottom: 12),
        child: SingleChildScrollView(child: MainContent()),
      ),
    );
  }
}
