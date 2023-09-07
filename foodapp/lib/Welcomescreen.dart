import 'package:flutter/material.dart';
import 'package:foodapp/Homescreen.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/images/boy.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Order Your Food now",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Order food and get delivery within a few mintues to your door",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 86, 7),
                  borderRadius: BorderRadius.circular(10)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Get Started",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                )
              ]),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
