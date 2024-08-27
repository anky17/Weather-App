import 'package:flutter/material.dart';
import 'package:weather_app/weather/screen/weather_page.dart';
import 'package:weather_app/weather_detail/weather_detail_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/weatherDetailPage": (context) => const WeatherDetailPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const WeatherPage(),
    );
  }
}
