import 'package:flutter/material.dart';

Widget customerList({String? name, String? number}) {
  return SizedBox(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          number!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        ),
        Divider(
          height: 10,
        )
      ],
    ),
  );
}
