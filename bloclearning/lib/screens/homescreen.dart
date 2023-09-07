import 'package:blocklearning/screens/productscreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("appbar"),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Productscreen();
          }));
        },
        child: const Text(
          "Get Products",
          style: TextStyle(fontSize: 18),
        ),
      )),
    );
  }
}
