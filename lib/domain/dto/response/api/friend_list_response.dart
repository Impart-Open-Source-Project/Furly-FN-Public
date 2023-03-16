import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_list_response.freezed.dart';
part 'friend_list_response.g.dart';

@freezed
class FriendListResponse with _$FriendListResponse {
  const factory FriendListResponse({
    @JsonKey(name: 'users') List<Users>? users,
  }) = _FriendListResponse;

  factory FriendListResponse.fromJson(Map<String, Object?> json) =>
      _$FriendListResponseFromJson(json);
}

@freezed
class Users with _$Users {
  const factory Users({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'lastUpdated') int? lastUpdated,
    @JsonKey(name: 'lastLogon') int? lastLogon,
  }) = _Users;

  factory Users.fromJson(Map<String, Object?> json) => _$UsersFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'lng') double? lng,
    @JsonKey(name: 'lat') double? lat,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
