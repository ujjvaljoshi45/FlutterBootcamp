import 'package:http/http.dart' as http;
import 'dart:convert';
import 'location.dart';

class NetworkHelper {
  NetworkHelper(this.location) {
    url =
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric';
  }

  Location location;
  String url;
  static String apiKey = 'e2e736f4e2b1d56b37fc366274c321cf';

  Future getData() async {
    http.Response response = await http.get(url);
    String data = response.body;
    if (response.statusCode != 200) {
      return null;
    } else {
      return jsonDecode(data);
    }
  }
}
