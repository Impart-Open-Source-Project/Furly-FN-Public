import 'package:location/location.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

import '../../../constants/global_constant.dart';
import '../entity/lng_lat.dart';

Future<void> animateCameraToUser(
  MapboxMap? controller,
  LngLat? userCurrentLocation,
) async {
  if (controller == null) return;
  // https://pub.dev/packages/geolocator
  if (userCurrentLocation != null) {
    controller.flyTo(
      CameraOptions(
        center: userCurrentLocation.toMap(),
        zoom: Global.defaultZoomLevel,
      ),
      MapAnimationOptions(
        duration: Global.mapAnimationDuration,
      ),
    );
  }
}

Future<bool> checkPermissions() async {
  bool hasPermission = false;
  Location location = Location();
  bool serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return false;
    }
  }

  PermissionStatus permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return false;
    }
  }
  final result = await location.enableBackgroundMode(enable: true);
  hasPermission = result;
  return hasPermission;
}
