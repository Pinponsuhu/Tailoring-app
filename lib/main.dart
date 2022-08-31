import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/add_new/add_new.dart';
import 'package:tailor_measurement/screens/authenticate/authenticate.dart';
import 'package:tailor_measurement/screens/authenticated.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
      routes: {
        '/home': (context) => Authenticated(),
        '/add-cap': (context) => AddNew(),
      }));
  FlutterNativeSplash.remove();
}
