import 'package:flutter/material.dart';

Widget customerList({String? name, String? number}) {
  return SizedBox(
      child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
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
            ],
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.indigo[900],
            ),
          )
        ],
      ),
      Divider(
        height: 18,
      )
    ],
  ));
}
