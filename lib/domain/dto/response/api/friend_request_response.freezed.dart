// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendRequestResponse _$FriendRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _FriendRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$FriendRequestResponse {
  @JsonKey(name: 'requests')
  List<Requests>? get requests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestResponseCopyWith<FriendRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestResponseCopyWith<$Res> {
  factory $FriendRequestResponseCopyWith(FriendRequestResponse value,
          $Res Function(FriendRequestResponse) then) =
      _$FriendRequestResponseCopyWithImpl<$Res, FriendRequestResponse>;
  @useResult
  $Res call({@JsonKey(name: 'requests') List<Requests>? requests});
}

/// @nodoc
class _$FriendRequestResponseCopyWithImpl<$Res,
        $Val extends FriendRequestResponse>
    implements $FriendRequestResponseCopyWith<$Res> {
  _$FriendRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = freezed,
  }) {
    return _then(_value.copyWith(
      requests: freezed == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Requests>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendRequestResponseCopyWith<$Res>
    implements $FriendRequestResponseCopyWith<$Res> {
  factory _$$_FriendRequestResponseCopyWith(_$_FriendRequestResponse value,
          $Res Function(_$_FriendRequestResponse) then) =
      __$$_FriendRequestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'requests') List<Requests>? requests});
}

/// @nodoc
class __$$_FriendRequestResponseCopyWithImpl<$Res>
    extends _$FriendRequestResponseCopyWithImpl<$Res, _$_FriendRequestResponse>
    implements _$$_FriendRequestResponseCopyWith<$Res> {
  __$$_FriendRequestResponseCopyWithImpl(_$_FriendRequestResponse _value,
      $Res Function(_$_FriendRequestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = freezed,
  }) {
    return _then(_$_FriendRequestResponse(
      requests: freezed == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Requests>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendRequestResponse implements _FriendRequestResponse {
  const _$_FriendRequestResponse(
      {@JsonKey(name: 'requests') final List<Requests>? requests})
      : _requests = requests;

  factory _$_FriendRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FriendRequestResponseFromJson(json);

  final List<Requests>? _requests;
  @override
  @JsonKey(name: 'requests')
  List<Requests>? get requests {
    final value = _requests;
    if (value == null) return null;
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FriendRequestResponse(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequestResponse &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendRequestResponseCopyWith<_$_FriendRequestResponse> get copyWith =>
      __$$_FriendRequestResponseCopyWithImpl<_$_FriendRequestResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendRequestResponseToJson(
      this,
    );
  }
}

abstract class _FriendRequestResponse implements FriendRequestResponse {
  const factory _FriendRequestResponse(
          {@JsonKey(name: 'requests') final List<Requests>? requests}) =
      _$_FriendRequestResponse;

  factory _FriendRequestResponse.fromJson(Map<String, dynamic> json) =
      _$_FriendRequestResponse.fromJson;

  @override
  @JsonKey(name: 'requests')
  List<Requests>? get requests;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestResponseCopyWith<_$_FriendRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Requests _$RequestsFromJson(Map<String, dynamic> json) {
  return _Requests.fromJson(json);
}

/// @nodoc
mixin _$Requests {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'requestId')
  int? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'originId')
  String? get originId => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetId')
  String? get targetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestsCopyWith<Requests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsCopyWith<$Res> {
  factory $RequestsCopyWith(Requests value, $Res Function(Requests) then) =
      _$RequestsCopyWithImpl<$Res, Requests>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'requestId') int? requestId,
      @JsonKey(name: 'originId') String? originId,
      @JsonKey(name: 'targetId') String? targetId,
      @JsonKey(name: 'timestamp') int? timestamp});
}

/// @nodoc
class _$RequestsCopyWithImpl<$Res, $Val extends Requests>
    implements $RequestsCopyWith<$Res> {
  _$RequestsCopyWithImpl(this._value, this._then);

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
    Object? requestId = freezed,
    Object? originId = freezed,
    Object? targetId = freezed,
    Object? timestamp = freezed,
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
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestsCopyWith<$Res> implements $RequestsCopyWith<$Res> {
  factory _$$_RequestsCopyWith(
          _$_Requests value, $Res Function(_$_Requests) then) =
      __$$_RequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'requestId') int? requestId,
      @JsonKey(name: 'originId') String? originId,
      @JsonKey(name: 'targetId') String? targetId,
      @JsonKey(name: 'timestamp') int? timestamp});
}

/// @nodoc
class __$$_RequestsCopyWithImpl<$Res>
    extends _$RequestsCopyWithImpl<$Res, _$_Requests>
    implements _$$_RequestsCopyWith<$Res> {
  __$$_RequestsCopyWithImpl(
      _$_Requests _value, $Res Function(_$_Requests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? requestId = freezed,
    Object? originId = freezed,
    Object? targetId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_Requests(
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
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Requests implements _Requests {
  const _$_Requests(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'requestId') this.requestId,
      @JsonKey(name: 'originId') this.originId,
      @JsonKey(name: 'targetId') this.targetId,
      @JsonKey(name: 'timestamp') this.timestamp});

  factory _$_Requests.fromJson(Map<String, dynamic> json) =>
      _$$_RequestsFromJson(json);

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
  @JsonKey(name: 'requestId')
  final int? requestId;
  @override
  @JsonKey(name: 'originId')
  final String? originId;
  @override
  @JsonKey(name: 'targetId')
  final String? targetId;
  @override
  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @override
  String toString() {
    return 'Requests(userId: $userId, username: $username, avatar: $avatar, requestId: $requestId, originId: $originId, targetId: $targetId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Requests &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.originId, originId) ||
                other.originId == originId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, avatar,
      requestId, originId, targetId, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestsCopyWith<_$_Requests> get copyWith =>
      __$$_RequestsCopyWithImpl<_$_Requests>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestsToJson(
      this,
    );
  }
}

abstract class _Requests implements Requests {
  const factory _Requests(
      {@JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'avatar') final String? avatar,
      @JsonKey(name: 'requestId') final int? requestId,
      @JsonKey(name: 'originId') final String? originId,
      @JsonKey(name: 'targetId') final String? targetId,
      @JsonKey(name: 'timestamp') final int? timestamp}) = _$_Requests;

  factory _Requests.fromJson(Map<String, dynamic> json) = _$_Requests.fromJson;

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
  @JsonKey(name: 'requestId')
  int? get requestId;
  @override
  @JsonKey(name: 'originId')
  String? get originId;
  @override
  @JsonKey(name: 'targetId')
  String? get targetId;
  @override
  @JsonKey(name: 'timestamp')
  int? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_RequestsCopyWith<_$_Requests> get copyWith =>
      throw _privateConstructorUsedError;
}
