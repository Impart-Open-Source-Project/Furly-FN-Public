// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendSearchResponse _$FriendSearchResponseFromJson(Map<String, dynamic> json) {
  return _FriendSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$FriendSearchResponse {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendSearchResponseCopyWith<FriendSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendSearchResponseCopyWith<$Res> {
  factory $FriendSearchResponseCopyWith(FriendSearchResponse value,
          $Res Function(FriendSearchResponse) then) =
      _$FriendSearchResponseCopyWithImpl<$Res, FriendSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class _$FriendSearchResponseCopyWithImpl<$Res,
        $Val extends FriendSearchResponse>
    implements $FriendSearchResponseCopyWith<$Res> {
  _$FriendSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendSearchResponseCopyWith<$Res>
    implements $FriendSearchResponseCopyWith<$Res> {
  factory _$$_FriendSearchResponseCopyWith(_$_FriendSearchResponse value,
          $Res Function(_$_FriendSearchResponse) then) =
      __$$_FriendSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class __$$_FriendSearchResponseCopyWithImpl<$Res>
    extends _$FriendSearchResponseCopyWithImpl<$Res, _$_FriendSearchResponse>
    implements _$$_FriendSearchResponseCopyWith<$Res> {
  __$$_FriendSearchResponseCopyWithImpl(_$_FriendSearchResponse _value,
      $Res Function(_$_FriendSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_FriendSearchResponse(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendSearchResponse implements _FriendSearchResponse {
  const _$_FriendSearchResponse(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'avatar') this.avatar});

  factory _$_FriendSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FriendSearchResponseFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'FriendSearchResponse(userId: $userId, username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendSearchResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendSearchResponseCopyWith<_$_FriendSearchResponse> get copyWith =>
      __$$_FriendSearchResponseCopyWithImpl<_$_FriendSearchResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendSearchResponseToJson(
      this,
    );
  }
}

abstract class _FriendSearchResponse implements FriendSearchResponse {
  const factory _FriendSearchResponse(
      {@JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'avatar') final String? avatar}) = _$_FriendSearchResponse;

  factory _FriendSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_FriendSearchResponse.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_FriendSearchResponseCopyWith<_$_FriendSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
