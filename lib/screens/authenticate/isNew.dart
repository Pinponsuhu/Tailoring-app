import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailor_measurement/constants/colors.dart';
import 'package:tailor_measurement/db/app_db.dart';
import 'package:tailor_measurement/models/user.dart';
import 'package:tailor_measurement/screens/authenticated.dart';

class IsNew extends StatefulWidget {
  final Function toggleAuth;
  IsNew(this.toggleAuth);

  @override
  State<IsNew> createState() => _IsNewState();
}

class _IsNewState extends State<IsNew> {
  final formKey = GlobalKey<FormState>();
  late String userName, userPin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //logo goes here
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('assets/logo.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Setup Profile",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[900]),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  userName = value;
                                });
                              },
                              validator: (value) {
                                if (value == null || value == "") {
                                  return "Username caanot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Username",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade200,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  userPin = value;
                                });
                              },
                              maxLength: 6,
                              validator: (value) {
                                if (value == null || value.length != 6) {
                                  return "Pin must be six digits";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Pin",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final isValidForm =
                                formKey.currentState!.validate();

                            if (isValidForm) {
                              print(userName);
                              final user =
                                  User(username: userName, pin: userPin);
                              await AppDataBase.instance.createUser(user);
                              print("User Added");
                              setDetails(userName, userPin);
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Authenticated(),
                                ),
                                (route) => false,
                              );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 18.0),
                            child: Text(
                              "Proceed",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo[900]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> setDetails(String? username, String? pin) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', userName);
    prefs.setString('pin', userPin);
  }
}
