import 'package:weather/weather.dart';

class WeatherModel {
  final WeatherFactory _weatherFactory;

  WeatherModel({required String apiKey}) : _weatherFactory = WeatherFactory(apiKey);

  Future<Weather> getCityWeather(String cityName) async {
    return await _weatherFactory.currentWeatherByCityName(cityName);
  }

  Future<Weather> getLocationWeather(double lat, double lon) async {
    return await _weatherFactory.currentWeatherByLocation(lat, lon);
  }

  String getWeatherIcon(String condition) {
    if (condition == 'sn') {
      return '☃️';
    } else if (condition == 'sl') {
      return '❄️';
    } else if (condition == 'h') {
      return '☀️';
    } else if (condition == 't') {
      return '⛈️';
    } else if (condition == 'hr') {
      return '🌧';
    } else if (condition == 'lr') {
      return '☁️';
    } else if (condition == 's') {
      return '🌞';
    } else if (condition == 'hc') {
      return '☁️';
    } else if (condition == 'lc') {
      return '☁️';
    } else if (condition == 'c') {
      return '☁️';
    } else {
      return '🤷‍';
    }
    // implement your weather icon logic here
  }

  String getMessage(double temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
    // implement your message logic here
  }
}
