// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class DepartmentWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  const DepartmentWidget({
    super.key,
    required this.imageUrl, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color.fromRGBO(2, 2, 2, 0.845),
            radius: 38,
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 35,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
