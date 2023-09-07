import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodapp/itemScreen.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatelessWidget {
  List food1 = ['Pizza', 'Burger', "Snacks", 'Water'];
  List food2 = ['Pizza', 'Burger', "Snacks", 'Water'];
  List<Color> bgColor = [
    Color(0xFFFFDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInLeft(
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to ",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Text("Patna , Bihar"),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 255, 86, 7),
                            )
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/profile.jpg"))),
                        ),
                        Positioned(
                            left: 25,
                            child: Container(
                              margin: EdgeInsets.all(3),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Color.fromARGB(255, 255, 86, 7),
                                  shape: BoxShape.circle),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FadeInDownBig(
                duration: Duration(milliseconds: 600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search Foods ,",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search)),
                      )),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 86, 7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.filter_list,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200, // Adjust the height as needed
                  aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/banner.jpg",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/banner1.jpg",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // Add more items if you have more images
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/banner2.jpg",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/banner3.jpg",
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 6,
                ),
                child: FadeInDown(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Categories ",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 86, 7),
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
              FadeInRight(
                child: SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: food1.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 110,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: bgColor[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/${food1[index]}.png",
                              height: 80,
                              width: 80,
                            ),
                            Spacer(),
                            Text(
                              "${food2[index]}",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Popular ",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 86, 7),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: food2.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => itemScreen(),
                            ));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        margin: EdgeInsets.only(
                            left: 12, right: 3, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/${food2[index]}.png",
                                  width:
                                      MediaQuery.of(context).size.width / 1.9,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${food2[index]}",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fast food",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
