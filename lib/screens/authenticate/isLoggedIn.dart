import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailor_measurement/constants/colors.dart';
import 'package:tailor_measurement/screens/authenticated.dart';

class IsLoggedIn extends StatefulWidget {
  final Function toggleAuth;
  IsLoggedIn(this.toggleAuth);

  @override
  State<IsLoggedIn> createState() => _IsLoggedInState();
}

class _IsLoggedInState extends State<IsLoggedIn> {
  late String userPin;
  late String userName;
  final formKey = GlobalKey<FormState>();
  late String sharedPin;

  Future getUserPin() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      sharedPin = prefs.getString('pin')!;
      userName = prefs.getString('username')!;
    });
    print(sharedPin);
  }

  @override
  void initState() {
    super.initState();
    getUserPin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKey,
              child: Column(
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/logo.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back, ${userName}",
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
                                onChanged: (value) {
                                  setState(() {
                                    userPin = value;
                                  });
                                },
                                maxLength: 6,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Pin",
                                  errorStyle: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                  ),
                                ),
                                validator: (value) {
                                  if (value != null && value.length < 6) {
                                    return 'Character less than 6';
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final isValidForm =
                                formKey.currentState!.validate();
                            if (userPin == sharedPin) {
                              if (isValidForm) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Authenticated(),
                                  ),
                                  (route) => false,
                                );
                              }
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 19),
                            child: Text(
                              "Continue",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigo[900])),
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
}
