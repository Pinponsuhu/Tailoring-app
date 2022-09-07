import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailor_measurement/components/bottom_nav.dart';
import 'package:tailor_measurement/constants/screen_index.dart';
import 'package:tailor_measurement/db/app_db.dart';
import 'package:tailor_measurement/models/cap.dart';
import 'package:tailor_measurement/screens/home/components/categories.dart';
import 'package:tailor_measurement/screens/home/components/customers_block.dart';
import 'package:tailor_measurement/screens/authenticated.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = ['All', 'Shirt', 'Pants', 'Cap'];

  bool homeBanner = true;

  String? username;

  late List<Cap> all;

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

  Future allCap() async {
    this.all = await AppDataBase.instance.readCap();
  }

  Future getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username')!;
    });
    print(username);
  }

  @override
  void initState() {
    super.initState();
    allCap();
    getUsername();
    print(all);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, bottom: 12),
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
                            fontSize: 18.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800]),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "${username}",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                homeBanner == true
                    ? Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 18),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.indigo.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  spreadRadius: 1.1,
                                  color: Colors.grey.shade400,
                                )
                              ]),
                          child: Column(
                            children: [
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
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Measure Pen",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                            color: Colors.indigo[900],
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Click the button below to get more information about the app",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                            color: Colors.indigo[900],
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/about');
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.indigo[900],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 17),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.yellow[600],
                                          fontSize: 18,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Recently added",
                          style: TextStyle(
                            color: Colors.indigo[700],
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: customers.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) =>
                        buildCustomerBlock(
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
    );
  }
}
