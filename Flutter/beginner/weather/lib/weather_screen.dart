import 'package:flutter/material.dart';
import 'package:weather/additional_info.dart';
import 'package:weather/hourforecast.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    getWeatherData();
    super.initState();
  }

  Future getWeatherData() async {
    String cityName = ' London';

    final String apiKey =
        'api.openweathermap.org/data/2.5/weather?q=$cityName,uk&APPID=7b055ca7e4fe39f7326abf7695c7468d';
    final res = await http.get(Uri.parse(apiKey));
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      '300.75 F',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Icon(
                      Icons.cloud,
                      size: 64,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Rain',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 120,
                      child: ForeCastItems(
                        icon: Icons.cloud,
                        label: 'Cloud',
                        value: '343',
                      ),
                    ),
                    SizedBox(
                        height: 120,
                        child: ForeCastItems(
                            icon: Icons.cloud, label: 'Cloud', value: '343')),
                    SizedBox(
                        height: 120,
                        child: ForeCastItems(
                            icon: Icons.sunny, label: 'sunny', value: '343')),
                    SizedBox(
                        height: 120,
                        child: ForeCastItems(
                            icon: Icons.sunny_snowing,
                            label: 'Rain',
                            value: '343')),
                  ],
                )),
            const SizedBox(height: 16),
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfo(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '133',
                  ),
                  AdditionalInfo(
                    icon: Icons.air,
                    label: 'Wind Speed',
                    value: '133',
                  ),
                  AdditionalInfo(
                    icon: Icons.beach_access,
                    label: 'Pressure',
                    value: '133',
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
