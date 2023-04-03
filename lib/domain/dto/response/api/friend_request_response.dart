import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request_response.freezed.dart';
part 'friend_request_response.g.dart';

@freezed
class FriendRequestResponse with _$FriendRequestResponse {
  const factory FriendRequestResponse({
    @JsonKey(name: 'requests') List<Requests>? requests,
  }) = _FriendRequestResponse;

  factory FriendRequestResponse.fromJson(Map<String, Object?> json) =>
      _$FriendRequestResponseFromJson(json);
}

@freezed
class Requests with _$Requests {
  const factory Requests({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'requestId') int? requestId,
    @JsonKey(name: 'originId') String? originId,
    @JsonKey(name: 'targetId') String? targetId,
    @JsonKey(name: 'timestamp') int? timestamp,
  }) = _Requests;

  factory Requests.fromJson(Map<String, Object?> json) =>
      _$RequestsFromJson(json);
}
