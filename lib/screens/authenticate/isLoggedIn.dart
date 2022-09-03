import 'package:flutter/material.dart';
import 'package:tailor_measurement/constants/colors.dart';

class IsLoggedIn extends StatefulWidget {
  final Function toggleAuth;
  IsLoggedIn(this.toggleAuth);

  @override
  State<IsLoggedIn> createState() => _IsLoggedInState();
}

class _IsLoggedInState extends State<IsLoggedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //logo goes here
              Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/logo.png'),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextFormField(
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Email Address",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("shaba");
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15.0),
                        child: Text(
                          "Continue",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo[900])),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}