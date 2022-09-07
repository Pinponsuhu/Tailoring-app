import 'package:flutter/material.dart';
import 'package:tailor_measurement/db/app_db.dart';
import 'package:tailor_measurement/models/cap.dart';

class AddNew extends StatefulWidget {
  AddNew({Key? key}) : super(key: key);

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  final formKey = GlobalKey<FormState>();
  late String customerName, customerNumber, capType;
  late String circumference;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Colors.indigo[900],
          title: Text("Add new"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    textAlign: TextAlign.center,
                    "Adding new Cap",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Divider(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Customer's name can't be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Customer name",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          customerName = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Customer's number can't be empty";
                        } else if (value.length < 11) {
                          return "Customer's number less than 11";
                        } else if (value.length > 11) {
                          return "Customer's number greater than 11";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Customer number",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          customerNumber = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Cap circumference can't be empty";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              setState(() {
                                circumference = value;
                              });
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                hintText: "Circumference"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Cap type can't be empty";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              setState(() {
                                capType = value;
                              });
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                hintText: "Cap type"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: ElevatedButton(
                      onPressed: () async {
                        final isFormValid = formKey.currentState!.validate();
                        if (isFormValid) {
                          final cap = Cap(
                              customerName: customerName,
                              customerNumber: customerNumber,
                              capType: capType,
                              circumference: circumference,
                              createdAt: DateTime.now(),
                              isFav: false);

                          await AppDataBase.instance.createCap(cap);
                          print(cap.customerName);

                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 40, vertical: 17)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo[900]),
                      ),
                      child: Text("Add new",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Poopins",
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
