import 'package:flutter/material.dart';

class ChangePin extends StatefulWidget {
  ChangePin({Key? key}) : super(key: key);

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  final formKey = GlobalKey<FormState>();
  late int newPin, confirmPin, oldPin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          title: Text("Change pin"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                      onChanged: (value) {
                        setState(() {
                          oldPin = int.parse(value);
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Old Pin",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value != null && value.length < 6) {
                          return "Pin must be six characters";
                        } else {
                          return null;
                        }
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
                      onChanged: (value) {
                        setState(() {
                          newPin = int.parse(value);
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "New Pin",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value != null && value.length < 6) {
                          return "Pin must be six characters";
                        } else {
                          return null;
                        }
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
                      onChanged: (value) {
                        setState(() {
                          confirmPin = int.parse(value);
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Confirm Pin",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value != null && value.length < 6) {
                          return "Pin must be six characters";
                        } else if (newPin != confirmPin) {
                          return "Pin do not match";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();
                      if (isValidForm) {
                        print("Validation done");
                      }
                    },
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
          ),
        ));
  }
}
