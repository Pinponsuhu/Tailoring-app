import 'package:flutter/material.dart';
import 'package:tailor_measurement/screens/authenticate/authenticate.dart';
import 'package:tailor_measurement/screens/authenticated.dart';
import 'package:tailor_measurement/screens/home/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
    home: Authenticated(),
  ));
  FlutterNativeSplash.remove();
}
