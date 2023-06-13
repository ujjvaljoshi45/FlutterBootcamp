import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;
  bool permission = false;

  Future<void> getLocationPermission() async {
    if (await Geolocator.checkPermission() == LocationPermission.denied) {
      permission = false;
    }
    while (!permission) {
      await Geolocator.requestPermission();
      permission =
          await Geolocator.checkPermission() == LocationPermission.denied
              ? false
              : true;
    }

    if (permission) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this._latitude = position.latitude;
      this._longitude = position.longitude;
    }
  }

  double get latitude => _latitude;
  double get longitude => _longitude;
}
