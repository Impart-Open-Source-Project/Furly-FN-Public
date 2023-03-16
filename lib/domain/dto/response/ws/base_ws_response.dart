import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_ws_response.freezed.dart';
part 'base_ws_response.g.dart';

@freezed
class BaseWsResponse with _$BaseWsResponse {
  const factory BaseWsResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'operate') String? operate,
    @JsonKey(name: 'data') dynamic data,
  }) = _BaseWsResponse;

  factory BaseWsResponse.fromJson(Map<String, Object?> json) =>
      _$BaseWsResponseFromJson(json);
}
