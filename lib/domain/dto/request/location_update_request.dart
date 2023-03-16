import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_update_request.freezed.dart';
part 'location_update_request.g.dart';

@freezed
class LocationUpdateRequest with _$LocationUpdateRequest {
  const factory LocationUpdateRequest({
    @JsonKey(name: 'operate') String? operate,
    @JsonKey(name: 'data') LocationUpdateRequestData? data,
  }) = _LocationUpdateRequest;

  factory LocationUpdateRequest.fromJson(Map<String, Object?> json) =>
      _$LocationUpdateRequestFromJson(json);
}

@freezed
class LocationUpdateRequestData with _$LocationUpdateRequestData {
  const factory LocationUpdateRequestData({
    @JsonKey(name: 'lng') double? lng,
    @JsonKey(name: 'lat') double? lat,
  }) = _LocationUpdateRequestData;

  factory LocationUpdateRequestData.fromJson(Map<String, Object?> json) =>
      _$LocationUpdateRequestDataFromJson(json);
}
