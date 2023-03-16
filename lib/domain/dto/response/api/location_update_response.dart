import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_update_response.freezed.dart';
part 'location_update_response.g.dart';

@freezed
class LocationUpdateResponse with _$LocationUpdateResponse {
  const factory LocationUpdateResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'operate') String? operate,
    @JsonKey(name: 'data') LocationUpdateResponseData? data,
  }) = _LocationUpdateResponse;

  factory LocationUpdateResponse.fromJson(Map<String, Object?> json) =>
      _$LocationUpdateResponseFromJson(json);
}

@freezed
class LocationUpdateResponseData with _$LocationUpdateResponseData {
  const factory LocationUpdateResponseData({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'timestamp') int? timestamp,
    @JsonKey(name: 'location') Location? location,
  }) = _LocationUpdateResponseData;

  factory LocationUpdateResponseData.fromJson(Map<String, Object?> json) =>
      _$LocationUpdateResponseDataFromJson(json);
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
