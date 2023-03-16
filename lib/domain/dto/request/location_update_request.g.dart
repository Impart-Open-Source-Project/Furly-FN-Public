// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationUpdateRequest _$$_LocationUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_LocationUpdateRequest(
      operate: json['operate'] as String?,
      data: json['data'] == null
          ? null
          : LocationUpdateRequestData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationUpdateRequestToJson(
        _$_LocationUpdateRequest instance) =>
    <String, dynamic>{
      'operate': instance.operate,
      'data': instance.data,
    };

_$_LocationUpdateRequestData _$$_LocationUpdateRequestDataFromJson(
        Map<String, dynamic> json) =>
    _$_LocationUpdateRequestData(
      lng: (json['lng'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LocationUpdateRequestDataToJson(
        _$_LocationUpdateRequestData instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
    };
