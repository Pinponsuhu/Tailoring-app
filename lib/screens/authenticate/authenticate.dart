import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailor_measurement/screens/authenticate/isLoggedIn.dart';
import 'package:tailor_measurement/screens/authenticate/isNew.dart';

class Authenticate extends StatefulWidget {
  Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isLogin = true;
  bool? username;
  void toggleAuth() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  Future getUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.containsKey('username');
    });
    if (username!) {
      setState(() {
        isLogin = !isLogin;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return isLogin == true ? IsNew(toggleAuth) : IsLoggedIn(toggleAuth);
  }
}
