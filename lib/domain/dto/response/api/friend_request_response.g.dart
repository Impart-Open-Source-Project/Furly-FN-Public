// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestResponse _$$_FriendRequestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FriendRequestResponse(
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => Requests.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FriendRequestResponseToJson(
        _$_FriendRequestResponse instance) =>
    <String, dynamic>{
      'requests': instance.requests,
    };

_$_Requests _$$_RequestsFromJson(Map<String, dynamic> json) => _$_Requests(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      requestId: json['requestId'] as int?,
      originId: json['originId'] as String?,
      targetId: json['targetId'] as String?,
      timestamp: json['timestamp'] as int?,
    );

Map<String, dynamic> _$$_RequestsToJson(_$_Requests instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'avatar': instance.avatar,
      'requestId': instance.requestId,
      'originId': instance.originId,
      'targetId': instance.targetId,
      'timestamp': instance.timestamp,
    };
