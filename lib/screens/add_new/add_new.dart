import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  AddNew({Key? key}) : super(key: key);

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Colors.indigo[900],
          title: Text("Add new"),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Adding new Cap",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            onChanged: null,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Circumference"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            onChanged: null,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Height"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo[900]),
                    ),
                    child: Text("Add new",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
