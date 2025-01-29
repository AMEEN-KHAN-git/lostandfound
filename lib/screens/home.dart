// ignore_for_file: unused_import

import 'package:dbproject/custom_widgets/department_widget.dart';
import 'package:dbproject/screens/find.dart';
import 'package:dbproject/screens/lostlocate.dart';
import 'package:dbproject/screens/report.dart';
import 'package:dbproject/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Hello user",
                style: TextStyle(fontSize: 25),
              ),
            ),
            toolbarHeight: 70,
            backgroundColor: Color.fromARGB(255, 113, 43, 153)),
        bottomNavigationBar: Container(
          height: 70,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Lostlocate()),
                        );
                      },
                      icon: Icon(Icons.search)),
                  label: "Locate Your Lost Items"),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Report()),
                        );
                      },
                      icon: Icon(Icons.feedback)),
                  label: "Report a Lost Item")
            ],
            backgroundColor: const Color.fromARGB(255, 113, 43, 153),
            selectedItemColor:
                const Color.fromARGB(255, 0, 0, 0), // For the selected tab
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: 1580,
              height: 600,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(60),
                  //     bottomRight: Radius.circular(60),
                  //     topLeft: Radius.circular(60),
                  //     bottomLeft: Radius.circular(60)),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://i.postimg.cc/wBzQSfJW/Screenshot-2025-01-21-181558.png",
                      ),
                      fit: BoxFit.cover,
                      opacity: 1.0)),
            ),
            Container(
              width: 1550,
              height: 70,
              color: const Color.fromARGB(101, 113, 43, 153),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 30),
              child: Text(
                "LOCATIONS",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decorationStyle: TextDecorationStyle.wavy),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 50),
                    child: Row(
                      children: [
                        Container(
                          width: 230,
                          height: 180,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(101, 113, 43, 153),
                              borderRadius: BorderRadius.circular(
                                  20), // Rounded rectangle
                              border: Border.all(
                                  width: 3,
                                  color: const Color.fromARGB(
                                      175, 185, 180, 180))),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 50),
                    child: Row(
                      children: [
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180)))),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            width: 230,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(101, 113, 43, 153),
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded rectangle
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        175, 185, 180, 180))))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
