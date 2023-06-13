import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int currentIndex = 0;

  List<String> images = [
    "assets/images_app/alps.jpg",
    "assets/images_app/paris.jpg",
    "assets/images_app/china.jpg",
    "assets/images_app/taj.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CarouselSlider(
        options: CarouselOptions(
          height: screenHeight, // Adjust the height as per your requirement
          autoPlay: true,
          viewportFraction: 1.1,
          aspectRatio:
              16 / 9, // Adjust the aspect ratio as per your requirement
          autoPlayCurve: Curves.fastOutSlowIn,

          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
          padEnds: true,
        ),
        items: images.map((imageURL) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(screenWidth * 0.33, 0,
                            screenWidth * 0.33, screenHeight * 0.01),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ))
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
