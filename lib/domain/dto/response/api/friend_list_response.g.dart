// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendListResponse _$$_FriendListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FriendListResponse(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FriendListResponseToJson(
        _$_FriendListResponse instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] as int?,
      lastLogon: json['lastLogon'] as int?,
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'avatar': instance.avatar,
      'location': instance.location,
      'lastUpdated': instance.lastUpdated,
      'lastLogon': instance.lastLogon,
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
