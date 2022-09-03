import 'package:flutter/material.dart';

class ChangeUsername extends StatefulWidget {
  ChangeUsername({Key? key}) : super(key: key);

  @override
  State<ChangeUsername> createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          title: Text("Change username"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade200,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Pinponsuhu",
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
                    decoration: InputDecoration(
                      hintText: "New Username",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo[900]),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
