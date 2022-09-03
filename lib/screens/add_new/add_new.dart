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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15
                  ),
                  Text(
                      "Adding new Cap",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Poppins",),
                    ),
                  Divider(
                    height: 30
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Customer name",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
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
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Customer number",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
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
                  SizedBox(height: 10),
                  Container(
                    child: ElevatedButton(
                      onPressed: null,
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
