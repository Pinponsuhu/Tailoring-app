import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/authenticate/login.dart';
import 'package:tailor_measurement/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isLogin = true;
  void toggleAuth() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLogin == true ? Login(toggleAuth) : Register(toggleAuth);
  }
}
