import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:generate_response/constants/svg_image.dart';

class ContentView extends StatefulWidget {
  const ContentView({Key? key}) : super(key: key);

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
            child: Center(
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xfff242728),
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: GestureDetector(
                  onTap: () {
                    print("object tapped...");
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02),
                        child: Container(
                          height: screenHeight * 0.05,
                          width: screenHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenHeight * 0.05),
                            color: Colors.green[300],
                          ),
                          child: Transform.scale(
                            scale: 0.7,
                            child: SvgPicture.asset(
                              work,
                              alignment: Alignment.center,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Text(
                        'Work',
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.25),
                        child: Text(
                          '24 Chat',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
            child: Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Color(0xfff242728),
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: GestureDetector(
                onTap: () {
                  print("object tapped...");
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenHeight * 0.05,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(screenHeight * 0.05),
                          color: Colors.purpleAccent[200],
                        ),
                        child: Transform.scale(
                          scale: 0.7,
                          child: SvgPicture.asset(
                            box,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.04,
                    ),
                    Text(
                      'Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Text(
                        '16 Chat',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
            child: Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Color(0xfff242728),
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: GestureDetector(
                onTap: () {
                  print("object tapped...");
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenHeight * 0.05,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(screenHeight * 0.05),
                          color: Colors.blueAccent,
                        ),
                        child: Transform.scale(
                          scale: 0.7,
                          child: SvgPicture.asset(
                            content,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.04,
                    ),
                    Text(
                      'Content',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Text(
                        '32 Chat',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
