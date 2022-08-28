import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/favorites/components/favorite_customer.dart';

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var customers = [
    {
      'name': "Pinponsuhu Joseph",
      'gender': "Male",
      'phone': "09078810948",
      'category': "Shirt"
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': "09075510948",
      'category': "Cap"
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': "09078810948",
      'category': "Skirt"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Favorites"),
          backgroundColor: Colors.indigo[900],
          elevation: 0.2,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              textAlign: TextAlign.left,
              "All Favorite Customers",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Lato",
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 30,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: customers.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) =>
                  favoriteCustomerList(
                      name: customers[index]['name'] as String,
                      number: customers[index]['phone'] as String),
            ),
          ]),
        ));
  }
}
