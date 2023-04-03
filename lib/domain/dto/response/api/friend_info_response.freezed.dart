// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendInfoResponse _$FriendInfoResponseFromJson(Map<String, dynamic> json) {
  return _FriendInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$FriendInfoResponse {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  int? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastLogin')
  int? get lastLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendInfoResponseCopyWith<FriendInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendInfoResponseCopyWith<$Res> {
  factory $FriendInfoResponseCopyWith(
          FriendInfoResponse value, $Res Function(FriendInfoResponse) then) =
      _$FriendInfoResponseCopyWithImpl<$Res, FriendInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'lastUpdated') int? lastUpdated,
      @JsonKey(name: 'lastLogin') int? lastLogin});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$FriendInfoResponseCopyWithImpl<$Res, $Val extends FriendInfoResponse>
    implements $FriendInfoResponseCopyWith<$Res> {
  _$FriendInfoResponseCopyWithImpl(this._value, this._then);

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
    Object? location = freezed,
    Object? lastUpdated = freezed,
    Object? lastLogin = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FriendInfoResponseCopyWith<$Res>
    implements $FriendInfoResponseCopyWith<$Res> {
  factory _$$_FriendInfoResponseCopyWith(_$_FriendInfoResponse value,
          $Res Function(_$_FriendInfoResponse) then) =
      __$$_FriendInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'lastUpdated') int? lastUpdated,
      @JsonKey(name: 'lastLogin') int? lastLogin});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_FriendInfoResponseCopyWithImpl<$Res>
    extends _$FriendInfoResponseCopyWithImpl<$Res, _$_FriendInfoResponse>
    implements _$$_FriendInfoResponseCopyWith<$Res> {
  __$$_FriendInfoResponseCopyWithImpl(
      _$_FriendInfoResponse _value, $Res Function(_$_FriendInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? lastUpdated = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(_$_FriendInfoResponse(
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendInfoResponse implements _FriendInfoResponse {
  const _$_FriendInfoResponse(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'lastLogin') this.lastLogin});

  factory _$_FriendInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FriendInfoResponseFromJson(json);

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
  @JsonKey(name: 'location')
  final Location? location;
  @override
  @JsonKey(name: 'lastUpdated')
  final int? lastUpdated;
  @override
  @JsonKey(name: 'lastLogin')
  final int? lastLogin;

  @override
  String toString() {
    return 'FriendInfoResponse(userId: $userId, username: $username, avatar: $avatar, location: $location, lastUpdated: $lastUpdated, lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendInfoResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, username, avatar, location, lastUpdated, lastLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendInfoResponseCopyWith<_$_FriendInfoResponse> get copyWith =>
      __$$_FriendInfoResponseCopyWithImpl<_$_FriendInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendInfoResponseToJson(
      this,
    );
  }
}

abstract class _FriendInfoResponse implements FriendInfoResponse {
  const factory _FriendInfoResponse(
          {@JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'avatar') final String? avatar,
          @JsonKey(name: 'location') final Location? location,
          @JsonKey(name: 'lastUpdated') final int? lastUpdated,
          @JsonKey(name: 'lastLogin') final int? lastLogin}) =
      _$_FriendInfoResponse;

  factory _FriendInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_FriendInfoResponse.fromJson;

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
  @JsonKey(name: 'location')
  Location? get location;
  @override
  @JsonKey(name: 'lastUpdated')
  int? get lastUpdated;
  @override
  @JsonKey(name: 'lastLogin')
  int? get lastLogin;
  @override
  @JsonKey(ignore: true)
  _$$_FriendInfoResponseCopyWith<_$_FriendInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'lng')
  int? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  int? get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({@JsonKey(name: 'lng') int? lng, @JsonKey(name: 'lat') int? lat});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'lng') int? lng, @JsonKey(name: 'lat') int? lat});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_Location(
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {@JsonKey(name: 'lng') this.lng, @JsonKey(name: 'lat') this.lat});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  @JsonKey(name: 'lng')
  final int? lng;
  @override
  @JsonKey(name: 'lat')
  final int? lat;

  @override
  String toString() {
    return 'Location(lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lng, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: 'lng') final int? lng,
      @JsonKey(name: 'lat') final int? lat}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @JsonKey(name: 'lng')
  int? get lng;
  @override
  @JsonKey(name: 'lat')
  int? get lat;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
