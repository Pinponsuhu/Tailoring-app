import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildCategories({String? category}) {
  return Row(
    children: [
      TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35, vertical: 10)),
            backgroundColor: MaterialStateProperty.all(Colors.indigo[900])),
        onPressed: () {
          print(category);
        },
        child: Text(
          category!,
          style: TextStyle(
            fontFamily: "Lato",
            color: Colors.yellow[600],
            fontSize: 17,
          ),
        ),
      ),
      SizedBox(
        width: 15,
      )
    ],
  );
}
//  Container(
//     alignment: Alignment.center,
//     decoration: BoxDecoration(
//       color: Colors.indigo[900],
//       borderRadius: BorderRadius.circular(6),
//     ),
//     margin: EdgeInsets.only(left: 20),
//     padding: EdgeInsets.symmetric(horizontal: 45, vertical: 0),
//     child: TextButton(
//       onPressed: () {
//         print(category!);
//       },
//       child: Row(children: [
//         Icon(color: Colors.white, Icons.all_inclusive_rounded),
//         SizedBox(width: 15),
//         Text(
//           category!,
//           style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//               color: Colors.yellow[600]),
//         )
//       ]),
//     ),
//   )