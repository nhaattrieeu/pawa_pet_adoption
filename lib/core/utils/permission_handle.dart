import 'package:geolocator/geolocator.dart';

enum PermissionHandleResponse { serviceDisable, denied, deniedForever, success }

class PermissionHandle {
  static Future<PermissionHandleResponse> checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return PermissionHandleResponse.serviceDisable;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return PermissionHandleResponse.denied;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return PermissionHandleResponse.deniedForever;
    }
    return PermissionHandleResponse.success;
  }
}
