import 'package:flutter/material.dart';
import 'package:weatherapp/screen/theme.dart';

import 'data.dart';

class PredictionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forecast'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,16,8,8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int index = 1; index <= 6; index++)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: darkTheme.cardColor,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${Data.weeklyData[index].day}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text('Low: ${Data.weeklyData[index].minTemp}'),
                                  SizedBox(width: 16),
                                  Text('High: ${Data.weeklyData[index].maxTemp}'),
                                ],
                              ),
                              Text('${Data.weeklyData[index].weather}'),
                              Text('Rain: ${Data.weeklyData[index].chanceOfRain}'),
                              SizedBox(height: 16),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                                indent: 4.0,
                                endIndent: 4.0,
                              ),
                            ],
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            child: getImageForWeather(Data.weeklyData[index].weather),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ),
    );
  }

  Widget getImageForWeather(String weather) {
    switch (weather) {
      case 'Sunny':
        return Image.asset(
          'lib/screen/assets/icons/sunny.png'
        );
      case 'Cloudy':
        return Image.asset(
          'lib/screen/assets/icons/cloudy.png',
        );
      case 'Rainy':
        return Image.asset(
          'lib/screen/assets/icons/rain.png',

        );
      case 'Thunderstorms':
        return Image.asset(
          'lib/screen/assets/icons/lightning-bolt.png',

        );
      default:
        return Image.asset(
          'lib/screen/assets/icons/cloudy.png',
        );
    }
  }
}
