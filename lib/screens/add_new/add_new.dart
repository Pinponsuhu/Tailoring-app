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
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade100,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: TextFormField(
                    onChanged: null,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Circumference"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
