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
      'category': "Shirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': "09075510948",
      'category': "Cap",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': "09078810948",
      'category': "Skirt",
      'isFavorite': false
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': "09075510948",
      'category': "Cap",
      'isFavorite': false
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': "09078810948",
      'category': "Skirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': "09075510948",
      'category': "Cap",
      'isFavorite': false
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': "09078810948",
      'category': "Skirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt",
      'isFavorite': false
    },
    {
      'name': "Pinponsuhu Joshua",
      'gender': "Male",
      'phone': "09075510948",
      'category': "Cap",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Joy",
      'gender': "Female",
      'phone': "09078810948",
      'category': "Skirt",
      'isFavorite': false
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt",
      'isFavorite': true
    },
    {
      'name': "Pinponsuhu Opeyemi",
      'gender': "Female",
      'phone': "08055068262",
      'category': "Skirt",
      'isFavorite': true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                      fontFamily: "Poppins",
                      color: Colors.black,
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
                          number: customers[index]['phone'] as String,
                          isFav: customers[index]['isFavorite'] as bool),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.yellow[600],
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(size: 28, Icons.close_rounded),
                          )
                        ]),
                    SizedBox(height: 18),
                    Text("Select an item measurement",
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                        )),
                    Divider(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/add-cap');
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.yellow[400])),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 34),
                              child: Text("Cap",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/add-shirt');
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green[400])),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 34),
                              child: Text("Shirt",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/add-cap');
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink[400])),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 34),
                              child: Text("Skirt",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/add-pant');
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.cyan[400])),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 34),
                              child: Text("Pants",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
            ;
          },
          child: Icon(color: Colors.indigo[900], Icons.add),
        ));
  }
}
