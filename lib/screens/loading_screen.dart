import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weather = WeatherModel(apiKey: '373a160d60d2e4fa3c34bd736911ee00');
    Weather weatherData = await weather.getLocationWeather(55.0111, 15.0569);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        apiKey: '373a160d60d2e4fa3c34bd736911ee00',
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}