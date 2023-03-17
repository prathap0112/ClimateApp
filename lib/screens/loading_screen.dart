import 'package:climate_app/screens/location_screen.dart';
import 'package:climate_app/services/location.dart';
import 'package:climate_app/services/networking.dart';
import 'package:flutter/material.dart';

const apiKey = '54b0f1999f4bee3420bde26c45830463';

class LoadingScreen extends StatefulWidget {
  static String routeName = 'LoadingScreen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    //Page Route Line is here
    Navigator.pushNamed(context, LocationScreen.routeName);
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
