import 'package:flutter/material.dart';


class WeatherData {
  final String day;
  final String minTemp;
  final String maxTemp;
  final String humidity;
  final String weather;
  final String chanceOfRain;
  final String currentTemp;
  final String icon;

  WeatherData({
    required this.day,
    required this.minTemp,
    required this.maxTemp,
    required this.humidity,
    required this.weather,
    required this.chanceOfRain,
    required this.currentTemp,
    required this.icon,
  });
}

class Data {
  static List<WeatherData> weeklyData = [
    WeatherData(
      day: 'Sunday',
      minTemp: '22°C',
      maxTemp: '28°C',
      humidity: '80%',
      weather: 'Cloudy',
      chanceOfRain: '30%',
      currentTemp: '25°C',
      icon:'lib/screen/assets/icons/cloudy.png',
    ),
    WeatherData(
      day: 'Monday',
      minTemp: '20°C',
      maxTemp: '27°C',
      humidity: '75%',
      weather: 'Sunny',
      chanceOfRain: '10%',
      currentTemp: '',
      icon:'lib/screen/assets/icons/sunny.png',
    ),
    WeatherData(
      day: 'Tuesday',
      minTemp: '18°C',
      maxTemp: '25°C',
      humidity: '70%',
      weather: 'Cloudy',
      chanceOfRain: '20%',
      currentTemp: '',
      icon:'lib/screen/assets/icons/cloudy.png',
    ),
    WeatherData(
      day: 'Wednesday',
      minTemp: '19°C',
      maxTemp: '24°C',
      humidity: '78%',
      weather: 'Rainy',
      chanceOfRain: '60%',
      currentTemp: '',
      icon:'lib/screen/assets/icons/rain.png',
    ),
    WeatherData(
      day: 'Thursday',
      minTemp: '17°C',
      maxTemp: '23°C',
      humidity: '85%',
      weather: 'Thunderstorms',
      chanceOfRain: '80%',
      currentTemp: '',
      icon: 'lib/screen/assets/icons/lightning-bolt.png',
    ),
    WeatherData(
      day: 'Friday',
      minTemp: '19°C',
      maxTemp: '26°C',
      humidity: '75%',
      weather: 'Sunny',
      chanceOfRain: '5%',
      currentTemp: '',
      icon: 'lib/screen/assets/icons/sunny.png',
    ),
    WeatherData(
      day: 'Saturday',
      minTemp: '21°C',
      maxTemp: '27°C',
      humidity: '82%',
      weather: 'Cloudy',
      chanceOfRain: '40%',
      currentTemp: '',
      icon: 'lib/screen/assets/icons/cloudy.png',
    ),
  ];
}
