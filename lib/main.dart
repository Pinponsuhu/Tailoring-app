import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/add_new/add_new.dart';
import 'package:tailor_measurement/screens/add_new/new-pant.dart';
import 'package:tailor_measurement/screens/add_new/new-shirt.dart';
import 'package:tailor_measurement/screens/authenticate/authenticate.dart';
import 'package:tailor_measurement/screens/authenticated.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tailor_measurement/screens/settings/about.dart';
import 'package:tailor_measurement/screens/settings/user/change_pin.dart';
import 'package:tailor_measurement/screens/settings/user/change_username.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
      routes: {
        '/home': (context) => Authenticated(),
        '/about': (context) => AboutApp(),
        '/pin': (context) => ChangePin(),
        '/username': (context) => ChangeUsername(),
        '/add-cap': (context) => AddNew(),
        '/add-shirt': (context) => NewShirt(),
        '/add-pant': (context) => NewPant(),
      }));
  FlutterNativeSplash.remove();
}
