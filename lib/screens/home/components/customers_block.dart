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
    height: double.infinity,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(6),
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
          height: 10,
        ),
        Text(
          name!,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.indigo[800]),
        ),
        SizedBox(height: 12),
        Text(
          phone!.toString(),
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.indigo[800]),
        ),
      ],
    ),
  );
}
