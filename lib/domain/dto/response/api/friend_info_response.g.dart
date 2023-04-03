// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendInfoResponse _$$_FriendInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FriendInfoResponse(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] as int?,
      lastLogin: json['lastLogin'] as int?,
    );

Map<String, dynamic> _$$_FriendInfoResponseToJson(
        _$_FriendInfoResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'avatar': instance.avatar,
      'location': instance.location,
      'lastUpdated': instance.lastUpdated,
      'lastLogin': instance.lastLogin,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lng: json['lng'] as int?,
      lat: json['lat'] as int?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
    };
