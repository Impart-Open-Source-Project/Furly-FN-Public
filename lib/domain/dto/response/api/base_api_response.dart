import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_api_response.freezed.dart';
part 'base_api_response.g.dart';

@freezed
class BaseApiResponse with _$BaseApiResponse {
  const factory BaseApiResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'data') dynamic data,
  }) = _BaseApiResponse;

  factory BaseApiResponse.fromJson(Map<String, Object?> json) =>
      _$BaseApiResponseFromJson(json);
}
