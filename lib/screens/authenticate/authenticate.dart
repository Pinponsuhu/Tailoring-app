import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/authenticate/isLoggedIn.dart';
import 'package:tailor_measurement/screens/authenticate/isNew.dart';

class Authenticate extends StatefulWidget {
  Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isLogin = false;
  void toggleAuth() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLogin == true ? IsNew(toggleAuth) : IsLoggedIn(toggleAuth);
  }
}
