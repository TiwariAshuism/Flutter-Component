import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

class itemScreen extends StatelessWidget {
  const itemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Cheese Pizza",
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(
              Icons.favorite,
              color: Colors.black12,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: FadeInDownBig(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Text("Mized Pizza with the cheese and chilli and panner"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 86, 7),
                ),
                Text("4.7")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300, // Adjust the height as needed
                  aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                  viewportFraction: 2.1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Pizza.png",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Pizza.png",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // Add more items if you have more images
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Pizza.png",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Pizza.png",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Calories",
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("140",
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 2,
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      "Volume",
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "7 Inch",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 2,
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1 Km",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Order",
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 2,
                          ),
                          Text("01"),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.multiline_chart),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Delivery",
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Express",
                            style: TextStyle(color: Colors.green, fontSize: 19),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$4.99 Dollors",
                            style: TextStyle(color: Colors.green, fontSize: 19),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: FadeInUpBig(
        child: InkWell(
          child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 86, 7),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add to cart",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
