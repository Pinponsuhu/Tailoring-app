import 'package:flutter/material.dart';
import 'package:tailor_measurement/constants/colors.dart';
import 'dart:math';

Widget buildCustomerBlock(
    {String? category, String? gender, int? phone, String? name}) {
  Random random = new Random();
  int colorLength = colors.length;
  int randomNumber = random.nextInt(colorLength);
  return Container(
    width: 220,
    height: double.infinity - 20,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      boxShadow: [
        BoxShadow(
          blurRadius: 3.0,
          spreadRadius: 1.1,
          color: Colors.grey.shade400,
        )
      ],
      color: Colors.indigo.shade100,
    ),
    margin: EdgeInsets.only(right: 20),
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          size: 45,
          color: Colors.indigo[800],
          gender! == 'Male' ? Icons.male : Icons.female,
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          name!,
          style: TextStyle(
              fontSize: 22,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              color: Colors.indigo[800]),
        ),
        SizedBox(height: 6),
        Text(
          phone!.toString(),
          style: TextStyle(
              fontSize: 17,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.indigo[800]),
        ),
        SizedBox(height: 6),
        Text(
          "Category: ${category!}",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 15.5,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
