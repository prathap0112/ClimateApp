import 'package:climate_app/screens/city_screen.dart';
import 'package:climate_app/screens/loading_screen.dart';
import 'package:climate_app/screens/location_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  LoadingScreen.routeName: (context) => LoadingScreen(),
  LocationScreen.routeName: (context) => LocationScreen(),
  CityScreen.routeName: (context) => CityScreen(),
};
