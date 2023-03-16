// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location_ws_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateLocationWsResponse _$$_UpdateLocationWsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateLocationWsResponse(
      userId: json['userId'] as String?,
      timestamp: json['timestamp'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateLocationWsResponseToJson(
        _$_UpdateLocationWsResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'timestamp': instance.timestamp,
      'location': instance.location,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lng: (json['lng'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
    };
