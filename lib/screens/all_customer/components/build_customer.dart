import 'package:flutter/material.dart';

Widget customerList(
    {required String name, required String number, required bool isFav}) {
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
                name,
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
                number,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              isFav = !isFav;
            },
            icon: Icon(
              isFav == false ? Icons.favorite_border_outlined : Icons.favorite,
              color: isFav == false ? Colors.indigo[900] : Colors.yellow[600],
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
