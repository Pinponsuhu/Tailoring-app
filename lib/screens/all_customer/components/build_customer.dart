import 'package:flutter/material.dart';

Widget customerList({String? name, String? number}) {
  return Container(
    height: 76,
    child: Column(
      children: [
        Text(
          name!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          number!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        ),
      ],
    ),
  );
}
