import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_search_response.freezed.dart';
part 'friend_search_response.g.dart';

@freezed
class FriendSearchResponse with _$FriendSearchResponse {
  const factory FriendSearchResponse({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _FriendSearchResponse;

  factory FriendSearchResponse.fromJson(Map<String, Object?> json) =>
      _$FriendSearchResponseFromJson(json);
}
