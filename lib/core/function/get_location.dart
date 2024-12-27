import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationManager {
  static late double longitude;
  static late double latitude;
  static late List<Placemark> placeMark;
  static Future<void> getLocation() async {
    await Geolocator.requestPermission();
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      getLocation();
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
    longitude = position.longitude;
    latitude = position.latitude;
    print(longitude);
    print(latitude);
    await getStreet();
  }

  static getStreet() async {
    placeMark = await placemarkFromCoordinates(latitude, longitude);
  }
}
