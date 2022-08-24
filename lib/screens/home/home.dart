import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tailor_measurement/components/bottom_nav.dart';
import 'package:tailor_measurement/screens/home/components/categories.dart';
import 'package:tailor_measurement/screens/home/components/customers_block.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = ['All', 'Shirt', 'Pants', 'Cap'];

  bool homeBanner = true;

  var customers = [
    {
      'name': "Pinponsuhu Joseph",
      'gender': "Male",
      'phone': 09078810948,
      'category': "Shirt"
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': 09075510948,
      'category': "Cap"
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': 09078810948,
      'category': "Skirt"
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': 08055068262,
      'category': "Skirt"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, bottom: 12),
          child: Expanded(
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Pinponsuhu",
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  homeBanner == true
                      ? Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.yellow[600],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            homeBanner = !homeBanner;
                                          });
                                        },
                                        icon: Icon(
                                          size: 34.0,
                                          color: Colors.indigo[900],
                                          Icons.cancel,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Image(
                                          height: 130,
                                          width: 130,
                                          image: AssetImage('assets/logo.png'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "App Name",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.indigo[900],
                                                  fontSize: 22),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Click the button below to get more information about the app",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.indigo[900],
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: null,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 6),
                                        decoration: BoxDecoration(
                                            color: Colors.indigo[900],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 18),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "Shaba",
                                          style: TextStyle(
                                              color: Colors.yellow[600],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) =>
                          buildCategories(category: categories[index]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 205,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: customers.length,
                      itemBuilder: (context, index) => buildCustomerBlock(
                          name: customers[index]['name'] as String,
                          category: customers[index]['category'] as String,
                          gender: customers[index]['gender'] as String,
                          phone: customers[index]['phone'] as int),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
