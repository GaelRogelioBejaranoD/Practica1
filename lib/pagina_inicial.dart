import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Column(
          children: [
            // First Section
            Expanded(
              child: Container(
                color: Color(0xfffdfdfd),
                child: Row(
                  children: [
                    // Left container with two stacked red containers
                    Container(
                      width: 140,
                      color: Color(0xffffd0cd),
                      child: Column(
                        children: [
                          // Smaller, darker red container at the top
                          Container(
                            height:
                                20, // Set a small height for the top container
                            color: Color(0xffff0000), // Darker red color
                          ),
                          // Original larger red container below
                          Expanded(
                            child: Center(
                              child: Text(
                                '</>',
                                style: TextStyle(
                                    color: Color(0xffff0000), fontSize: 40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer to push the text thingy to the right
                    Padding(
                      padding: EdgeInsets.only(left: 75.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Center vertically
                          children: List.generate(7, (index) {
                            return Text(
                              'Blai Bla Bla',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 16),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Second Section (with image and padding)
            Expanded(
              child: Container(
                color: Color(0xffd9d9d9),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0), // Add padding to move left
                  child: Align(
                    alignment: Alignment.centerLeft, // Align to the left side
                    child: Image.network(
                      'https://cdn5.vectorstock.com/i/thumb-large/00/74/letter-f-logo-elegant-gradient-red-color-vector-21460074.jpg',
                      width: 150, // Increased image size
                      height: 150, // Increased image size
                    ),
                  ),
                ),
              ),
            ),
            // Divider
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            // Third Section with growing vertical rectangles
            Expanded(
              child: Container(
                color: Color(0xffe5e5e5), // Lighter background color
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20,
                    bottom: 5,
                  ), // Added left padding along with top and right
                  child: Row(
                    children: [
                      // Left side with growing rectangles (wider container and updated colors)
                      Container(
                        width:
                            120, // Increased width for the left side graphic area
                        color: Color(
                            0xfff0f0f0), // Light background color for left side
                        child: Stack(
                          children: [
                            // Red rectangle aligned to the bottom-left
                            Positioned(
                              bottom: 0, // Align to the bottom
                              left: 0, // Align to the left
                              child: Container(
                                width: 30, // Increased width for the rectangles
                                height:
                                    30.0, // Fixed height to make it touch the ground
                                color: Color(0xffffcccc), // Light red
                              ),
                            ),
                            // Orange rectangle aligned towards the bottom-center
                            Positioned(
                              bottom: 0, // Align to the bottom
                              left: 30, // Move a little right
                              child: Container(
                                width: 30, // Increased width for the rectangles
                                height: 70.0, // Increased height
                                color: Color(0xffffe0b3), // Light orange
                              ),
                            ),
                            // Yellow rectangle aligned towards the bottom-right
                            Positioned(
                              bottom: 0, // Align to the bottom
                              left: 60, // Move further to the right
                              child: Container(
                                width: 30, // Increased width for the rectangles
                                height: 110.0, // Increased height
                                color: Color(0xffffffcc), // Light yellow
                              ),
                            ),
                            // Light purple rectangle aligned next to the yellow one
                            Positioned(
                              bottom: 0, // Align to the bottom
                              left:
                                  90, // Move further to the right, next to the yellow
                              child: Container(
                                width: 30, // Same width as the yellow rectangle
                                height:
                                    150.0, // Taller than the yellow rectangle
                                color: Color(0xffd1a7ff), // Light purple
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Right side with "Bla Bla Bla" text repeated (move a little to the right)
                      Container(
                        width: 200, // Smaller width for the text container
                        padding: EdgeInsets.only(
                            right: 50,
                            left:
                                0), // Added padding to move text a little to the right
                        child: Align(
                          alignment: Alignment
                              .centerRight, // Align the text to the right
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(7, (index) {
                              return Text(
                                'Bla Bla Bla',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
