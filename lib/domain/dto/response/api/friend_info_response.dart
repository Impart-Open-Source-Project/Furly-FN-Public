import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_info_response.freezed.dart';
part 'friend_info_response.g.dart';

@freezed
class FriendInfoResponse with _$FriendInfoResponse {
  const factory FriendInfoResponse({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'lastUpdated') int? lastUpdated,
    @JsonKey(name: 'lastLogin') int? lastLogin,
  }) = _FriendInfoResponse;

  factory FriendInfoResponse.fromJson(Map<String, Object?> json) =>
      _$FriendInfoResponseFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'lng') int? lng,
    @JsonKey(name: 'lat') int? lat,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
