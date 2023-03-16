// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationUpdateResponse _$$_LocationUpdateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LocationUpdateResponse(
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      operate: json['operate'] as String?,
      data: json['data'] == null
          ? null
          : LocationUpdateResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationUpdateResponseToJson(
        _$_LocationUpdateResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'operate': instance.operate,
      'data': instance.data,
    };

_$_LocationUpdateResponseData _$$_LocationUpdateResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_LocationUpdateResponseData(
      userId: json['userId'] as String?,
      timestamp: json['timestamp'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationUpdateResponseDataToJson(
        _$_LocationUpdateResponseData instance) =>
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
