import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/global_constant.dart';
import '../../../domain/local_storage/shared_preference_provider.dart';
import '../../../domain/provider/location_ws_provider.dart';
import '../../../domain/repository/location_ws_repository.dart';
import '../entity/lng_lat.dart';
import 'user_model_provider.dart';

class UserLocationNotifier extends StateNotifier<LngLat?> {
  SharedPreferences? pref;
  StateNotifierProviderRef ref;
  LocationWsRepository? repository;
  UserLocationNotifier(
    this.pref,
    this.ref,
  ) : super(null) {
    _init();
  }

  Location location = Location();

  void _init() {
    getLastLngLat();
    getFirstLaunchLocation();
    watchLocationUpdate();
    final token = pref?.getString(userTokenKey);
    final userId = ref.read(userModelProvider)?.userId;
    if (token != null) {
      repository = ref.watch(locationRepoProvider);
    }
  }

  void getFirstLaunchLocation() async {
    debugPrint('getFirstLaunchLocation');
    final position = await location.getLocation();
    if (position.latitude != null && position.longitude != null) {
      state = LngLat(
        position.longitude!,
        position.latitude!,
      );
    }
  }

  void watchLocationUpdate() {
    debugPrint('watchLocationUpdate');
    location.onLocationChanged.listen((event) {
      print('onLocationListen: ${event.longitude}:${event.latitude}');
      if (_shouldUpdateLocation(event) || true) {
        print('onLocationUpdate: ${event.longitude}:${event.latitude}');
        updateUserPreference(event);
        updateWebSocket(event);
      }
    });
  }

  void updateWebSocket(LocationData event) async {
    if (repository != null) {
      if (event.latitude != null && event.longitude != null) {
        final lat = event.latitude!;
        final lng = event.longitude!;
        repository!.sendLocation(lng, lat);
      }
    }
  }

  void updateUserPreference(LocationData event) {
    if (event.latitude != null && event.longitude != null) {
      if (pref != null) {
        pref!.setDouble(lastLatKey, event.latitude!);
        pref!.setDouble(lastLngKey, event.longitude!);
      }
      state = LngLat(
        event.longitude!,
        event.latitude!,
      );
    }
  }

  bool _shouldUpdateLocation(LocationData event) {
    if (event.latitude != null && event.longitude != null) {
      final lat = event.latitude!;
      final lng = event.longitude!;
      if (state == null) {
        return true;
      }
      // prevent location updating too often
      if (state!.lat - lat > Global.locationUpdateVariance ||
          state!.lng - lng > Global.locationUpdateVariance) {
        return true;
      }
    }
    return false;
  }

  void getLastLngLat() {
    final lng = pref?.getDouble(lastLngKey);
    final lat = pref?.getDouble(lastLatKey);
    if (lng != null && lat != null) {
      state = LngLat(lng, lat);
    }
  }
}

final userLocationNotifierProvider =
    StateNotifierProvider<UserLocationNotifier, LngLat?>((ref) {
  return UserLocationNotifier(
    ref.watch(sharedPreferenceNotifierProvider),
    ref,
  );
});
