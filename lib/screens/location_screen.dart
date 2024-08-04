import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/services/weather.dart';
import 'package:weather/weather.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({required this.apiKey, this.locationWeather});

  final String apiKey;
  final Weather? locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late WeatherModel weather;
  late int temperature;
  late String weatherIcon;
  late String cityName;
  late String weatherMessage;

  @override
  void initState() {
    super.initState();
    weather = WeatherModel(apiKey: widget.apiKey);
    updateUI(widget.locationWeather);
  }

  void updateUI(Weather? weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }

      temperature = weatherData.temperature!.celsius!.toInt();
      weatherIcon = weather.getWeatherIcon(weatherData.weatherDescription ?? 'Error');
      weatherMessage = weather.getMessage(temperature.toDouble());
      cityName = weatherData.areaName!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildButtons(),
              _buildTemperature(),
              _buildMessage(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TextButton(
          onPressed: () async {
            var weatherData = await weather.getLocationWeather(context as double,context as double);
            updateUI(weatherData);
          },
          child: Icon(
            Icons.near_me,
            size: 50.0,
          ),
        ),
        TextButton(
          onPressed: () async {
            var typedName = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CityScreen();
                },
              ),
            );
            if (typedName!= null) {
              var weatherData = await weather.getCityWeather(typedName);
              updateUI(weatherData);
            }
          },
          child: Icon(
            Icons.location_city,
            size: 50.0,
          ),
        ),
      ],
    );
  }

  Row _buildTemperature() {
    return Row(
      children: <Widget>[
        Text(
          '$temperature°',
          style: kTempTextStyle,
        ),
        Text(
          weatherIcon,
          style: kConditionTextStyle,
        ),
      ],
    );
  }

  Text _buildMessage() {
    return Text(
      '$weatherMessage in $cityName',
      textAlign: TextAlign.right,
      style: kMessageTextStyle,
    );
  }
}