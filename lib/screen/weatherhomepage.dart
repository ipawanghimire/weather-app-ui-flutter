
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/screen/predictionpage.dart';
import 'package:weatherapp/screen/theme.dart';

import 'data.dart';

class WeatherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0,64,8,8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  // Perform search action
                },
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.deepPurpleAccent),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

          Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Currently',style: TextStyle(
                    //  color: Colors.deepPurpleAccent
                    ),),
                    Text(
                      'Kathmandu',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      //  color: Colors.deepPurpleAccent
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${Data.weeklyData[0].day}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset('lib/screen/assets/icons/cloudy.png',
                          height: 60,
                          width: 60,),

                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '${Data.weeklyData[0].currentTemp}', style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                            Text('  ${Data.weeklyData[0].weather}'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Low: ${Data.weeklyData[0].minTemp}'),
                       SizedBox(height: 10,),
                        Text('High: ${Data.weeklyData[0].maxTemp}'),
                       SizedBox(height: 10,),
                        Text('Humidity: ${Data.weeklyData[0].humidity}'),
                        SizedBox(height: 10,),
                        Text('Rain: ${Data.weeklyData[0].chanceOfRain}'),
                        SizedBox(height: 8),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Forecast"),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to the next 6 days prediction page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PredictionPage()),
                            );
                          },
                          child: Text("See More"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  for (int index = 1; index <= 4; index++)
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
                                Text('Rain: ${Data.weeklyData[index]
                                    .chanceOfRain}'),
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
                              child: getImageForWeather(
                                  Data.weeklyData[index].weather),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
  Widget getImageForWeather(String weather) {
    switch (weather) {
      case 'Sunny':
        return Image.asset(
          'lib/screen/assets/icons/sunny.png'
        );
      case 'Cloudy':
        return Image.asset(
          'lib/screen/assets/icons/cloudy.png'
        );
      case 'Rainy':
        return Image.asset(
          'lib/screen/assets/icons/rain.png'
        );
      case 'Thunderstorms':
        return Image.asset(
          'lib/screen/assets/icons/lightning-bolt.png'
        );
      default:
        return Image.asset(
          'lib/screen/assets/icons/cloudy.png'
        );
    }
  }
