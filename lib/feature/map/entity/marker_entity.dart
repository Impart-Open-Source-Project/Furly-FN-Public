import 'dart:math';

import 'lng_lat.dart';
import 'user_entity.dart';

class MarkerEntity {
  UserEntity userEntity;
  Point<num> position;
  LngLat coordinate;

  MarkerEntity({
    required this.userEntity,
    required this.position,
    required this.coordinate,
  });

  void updatePosition(Point<num> point) {
    position = point;
  }

  MarkerEntity copyWith({
    UserEntity? userEntity,
    Point<num>? position,
    LngLat? coordinate,
  }) {
    return MarkerEntity(
      userEntity: userEntity ?? this.userEntity,
      position: position ?? this.position,
      coordinate: coordinate ?? this.coordinate,
    );
  }
}
