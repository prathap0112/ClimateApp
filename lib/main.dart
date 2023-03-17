import 'package:climate_app/routes.dart';
import 'package:climate_app/screens/city_screen.dart';
import 'package:climate_app/screens/loading_screen.dart';
import 'package:climate_app/screens/location_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Climate_App',
      theme: ThemeData.dark(),
      initialRoute: LoadingScreen.routeName,
      routes: routes,
    );
  }
}
