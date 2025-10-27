import 'package:geocode/geocode.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


@injectable
class LocationService {
  LocationService();

  static LocationService get instance => GetIt.I<LocationService>();

  Future<String> getAddress(LatLng latLng) async {
    GeoCode geoCode = GeoCode();
    try {
      var address = await geoCode.reverseGeocoding(latitude: latLng.latitude, longitude: latLng.longitude);
      var data = "${address.countryName??""}  ${address.city??""}  ${address.region??""}  ${address.streetAddress??""}";
      return data;
    } catch (e) {
      return "";
    }
  }

  void navigateToMapWithDirection({required double lat, required double lon}) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
    if (await canLaunch(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }



// First, get the user's location
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }

}
