import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = 'e2e736f4e2b1d56b37fc366274c321cf';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  void getLocationData() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      WeatherModel weatherModel = WeatherModel();
      var weatherData = weatherModel.getLocationWeather();
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        //   child: SpinKitDoubleBounce(
        //     color: Colors.white,
        //     size: 100.0,
        //   ),
        // ),
        );
  }
}
