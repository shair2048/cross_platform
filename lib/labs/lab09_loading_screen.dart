import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';
import 'location_screen.dart';

class Lab09 extends StatefulWidget {
  const Lab09({super.key});

  @override
  State<Lab09> createState() => _Lab09State();
}

class _Lab09State extends State<Lab09> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      ),
    ));
  }
}
