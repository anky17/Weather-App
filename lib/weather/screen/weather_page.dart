import 'package:flutter/material.dart';
import 'package:weather_app/model/hourly_forecast_model.dart';
import 'package:weather_app/model/temperature_card_model.dart';
import 'package:weather_app/weather/widgets/hourly_forecast_widget.dart';
import 'package:weather_app/weather/widgets/temperature_card_widget.dart';
import 'package:weather_app/weather/widgets/weather_info_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  List<HourlyWidgetModel> hourlyForecastList = [
    HourlyWidgetModel(time: '00 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '01 PM', temp: '26°', icon: Icons.cloudy_snowing),
    HourlyWidgetModel(time: '02 PM', temp: '27°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '03 PM', temp: '25°', icon: Icons.wb_cloudy),
    HourlyWidgetModel(time: '04 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '06 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '07 PM', temp: '25°', icon: Icons.wb_cloudy),
    HourlyWidgetModel(time: '08 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '09 PM', temp: '25°', icon: Icons.wb_cloudy),
    HourlyWidgetModel(time: '10 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '11 PM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '12 PM', temp: '25°', icon: Icons.wb_cloudy),
    HourlyWidgetModel(time: '01 AM', temp: '24°', icon: Icons.wb_sunny),
    HourlyWidgetModel(time: '02 AM', temp: '24°', icon: Icons.wb_sunny),
  ];

  List<TemperatureCardModel> tempCardList = [
    TemperatureCardModel(time: 'Morning', temp: '25°'),
    TemperatureCardModel(time: 'Afternon', temp: '20°'),
    TemperatureCardModel(time: 'Evening', temp: '19°'),
    TemperatureCardModel(time: 'Night', temp: '10°')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // Image.asset("assets/thumbup.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Gotham',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Today 00:32 PM',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    InkWell(
                      onTap: () {
                        //default naviagtor
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => WeatherDetailPage(),
                        // ));

                        //named route
                        Navigator.of(context).pushNamed('/weatherPageDetail');
                      },
                      child: const Text(
                        '24°C',
                        style: TextStyle(
                            fontSize: 70, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'Mostly Clear',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // for (int i = 0; i < 3; i++)
                        WeatherInfoCard(icon: Icons.compress, label: '720hpa'),
                        WeatherInfoCard(icon: Icons.water_drop, label: '32%'),
                        WeatherInfoCard(icon: Icons.air, label: '12km/h'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 140,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          // color: const Color.fromARGB(255, 218, 233, 245),
                          color: const Color.fromARGB(255, 241, 206, 204),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Temperature',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                            Expanded(
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: tempCardList.length,
                                itemBuilder: (context, index) =>
                                    TemperatureWidget(
                                  quaterTime: tempCardList[index].time,
                                  temp: tempCardList[index].temp,
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(width: 35);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ElevatedButton(onPressed: () {}, child: const Text("Next Page")),
            // TextButton(onPressed: () {}, child: Text("data")),/
            // Temperature Card
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: 370,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 250, 254, 255),
                color: const Color.fromARGB(255, 192, 218, 239),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Today',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Next 7 Days',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Hourly Forecast Card
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: hourlyForecastList.length,
                      itemBuilder: (context, index) => HourlyWidget(
                        time: hourlyForecastList[index].time,
                        temp: hourlyForecastList[index].temp,
                        icon: hourlyForecastList[index].icon,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
