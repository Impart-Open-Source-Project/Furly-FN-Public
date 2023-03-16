import 'dart:math';

import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' hide Point;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/lng_lat.dart';
import '../entity/marker_entity.dart';
import '../entity/user_entity.dart';
import '../widget/marker.dart';
import 'friend_user_entity_list_provider.dart';
import 'mapbox_controller_provider.dart';

part 'markers_provider.g.dart';

@riverpod
class Markers extends _$Markers {
  late List<UserEntity> friendUserEntities;
  MapboxMap? controller;

  @override
  List<Marker> build() {
    print('''
---------------------------------
Markers build
---------------------------------
''');
    friendUserEntities = ref.watch(friendUserEntityListProvider);
    controller = ref.watch(mapBoxControllerProvider);

    if (controller != null) {
      setUser();
    }
    return [];
  }

  void setUser() async {
    final List<Marker> markerList = [];
    for (var element in friendUserEntities) {
      final LngLat location = LngLat(
        element.lng,
        element.lat,
      );

      await controller?.pixelForCoordinate(location.toMap()).then((value) {
        final marker = Marker(
          markerEntity: MarkerEntity(
            userEntity: element,
            position: Point(value.x, value.y),
            coordinate: location,
          ),
        );
        markerList.add(marker);
      });
    }

    state = markerList;
  }

  void updateMarkerPosition() async {
    final coordinates = <Map<String?, Object?>>[];
    List<Marker> markerList = [...state];
    for (final marker in markerList) {
      coordinates.add(marker.markerEntity.coordinate.toMap());
    }

    await controller?.pixelsForCoordinates(coordinates).then((points) {
      markerList.asMap().forEach((i, value) {
        markerList[i] = Marker(
          markerEntity: markerList[i].markerEntity.copyWith(
                position: Point(points[i]?.x ?? 0, points[i]?.y ?? 0),
              ),
        );
      });
    });
    state = markerList;
  }

  void addMarker(LngLat lngLat, UserEntity user) async {
    await controller?.pixelForCoordinate(lngLat.toMap()).then((value) {
      state = [
        ...state,
        Marker(
          markerEntity: MarkerEntity(
            userEntity: user,
            position: Point(value.x, value.y),
            coordinate: lngLat,
          ),
        )
      ];
    });
  }
}
