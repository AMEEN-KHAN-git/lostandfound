import 'package:dbproject/screens/home.dart';
import 'package:flutter/material.dart';

class Lostlocate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Home()), 
      (route) => false,
            );
          },
        ),
        title: Text('App Name'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Departments'),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) => buildItemCard()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) => buildItemCard()),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Lost Page Navigation'),
                      Text('Found Page Navigation'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Logo', style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text('© 2024 Your Website. All rights reserved.'),
                            SizedBox(width: 16),
                            Text('Privacy Policy'),
                            SizedBox(width: 16),
                            Text('Terms of Service'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.facebook),
                            SizedBox(width: 8),
                            Icon(Icons.message),
                            SizedBox(width: 8),
                            Icon(Icons.call),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemCard() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.grey[300],
          child: Icon(Icons.image, size: 50),
        ),
        SizedBox(height: 8),
        Text('Name of item', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text('Brief Description'),
        Text('Place found'),
        Text('Time Found'),
      ],
    );
  }
}
