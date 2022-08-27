import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/all_customer/components/build_customer.dart';

class AllCustomer extends StatefulWidget {
  AllCustomer({Key? key}) : super(key: key);

  @override
  State<AllCustomer> createState() => _AllCustomerState();
}

class _AllCustomerState extends State<AllCustomer> {
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
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt"
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
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt"
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
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt"
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
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt"
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
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.2,
          backgroundColor: Colors.indigo[900],
          title: Text(
            "All Customer",
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "All Customer Details",
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
                      customerList(
                          name: customers[index]['name'] as String,
                          number: customers[index]['phone'] as String),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.yellow[600],
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          child: Icon(color: Colors.indigo[900], Icons.add),
        ));
  }
}
