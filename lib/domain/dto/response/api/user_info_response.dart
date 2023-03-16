import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_response.freezed.dart';
part 'user_info_response.g.dart';

@freezed
class UserInfoResponse with _$UserInfoResponse {
  const factory UserInfoResponse({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'lastUpdated') int? lastUpdated,
    @JsonKey(name: 'lastLogin') int? lastLogin,
  }) = _UserInfoResponse;

  factory UserInfoResponse.fromJson(Map<String, Object?> json) =>
      _$UserInfoResponseFromJson(json);
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
