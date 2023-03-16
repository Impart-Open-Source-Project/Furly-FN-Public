import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_location_ws_response.freezed.dart';
part 'update_location_ws_response.g.dart';

@freezed
class UpdateLocationWsResponse with _$UpdateLocationWsResponse {
  const factory UpdateLocationWsResponse({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'timestamp') int? timestamp,
    @JsonKey(name: 'location') Location? location,
  }) = _UpdateLocationWsResponse;

  factory UpdateLocationWsResponse.fromJson(Map<String, Object?> json) =>
      _$UpdateLocationWsResponseFromJson(json);
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
