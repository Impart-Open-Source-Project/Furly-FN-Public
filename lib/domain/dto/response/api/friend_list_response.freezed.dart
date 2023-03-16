// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendListResponse _$FriendListResponseFromJson(Map<String, dynamic> json) {
  return _FriendListResponse.fromJson(json);
}

/// @nodoc
mixin _$FriendListResponse {
  @JsonKey(name: 'users')
  List<Users>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendListResponseCopyWith<FriendListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendListResponseCopyWith<$Res> {
  factory $FriendListResponseCopyWith(
          FriendListResponse value, $Res Function(FriendListResponse) then) =
      _$FriendListResponseCopyWithImpl<$Res, FriendListResponse>;
  @useResult
  $Res call({@JsonKey(name: 'users') List<Users>? users});
}

/// @nodoc
class _$FriendListResponseCopyWithImpl<$Res, $Val extends FriendListResponse>
    implements $FriendListResponseCopyWith<$Res> {
  _$FriendListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendListResponseCopyWith<$Res>
    implements $FriendListResponseCopyWith<$Res> {
  factory _$$_FriendListResponseCopyWith(_$_FriendListResponse value,
          $Res Function(_$_FriendListResponse) then) =
      __$$_FriendListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'users') List<Users>? users});
}

/// @nodoc
class __$$_FriendListResponseCopyWithImpl<$Res>
    extends _$FriendListResponseCopyWithImpl<$Res, _$_FriendListResponse>
    implements _$$_FriendListResponseCopyWith<$Res> {
  __$$_FriendListResponseCopyWithImpl(
      _$_FriendListResponse _value, $Res Function(_$_FriendListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_FriendListResponse(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendListResponse implements _FriendListResponse {
  const _$_FriendListResponse(
      {@JsonKey(name: 'users') final List<Users>? users})
      : _users = users;

  factory _$_FriendListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FriendListResponseFromJson(json);

  final List<Users>? _users;
  @override
  @JsonKey(name: 'users')
  List<Users>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FriendListResponse(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendListResponse &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendListResponseCopyWith<_$_FriendListResponse> get copyWith =>
      __$$_FriendListResponseCopyWithImpl<_$_FriendListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendListResponseToJson(
      this,
    );
  }
}

abstract class _FriendListResponse implements FriendListResponse {
  const factory _FriendListResponse(
          {@JsonKey(name: 'users') final List<Users>? users}) =
      _$_FriendListResponse;

  factory _FriendListResponse.fromJson(Map<String, dynamic> json) =
      _$_FriendListResponse.fromJson;

  @override
  @JsonKey(name: 'users')
  List<Users>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_FriendListResponseCopyWith<_$_FriendListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
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
  @JsonKey(name: 'lastLogon')
  int? get lastLogon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'lastUpdated') int? lastUpdated,
      @JsonKey(name: 'lastLogon') int? lastLogon});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

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
    Object? lastLogon = freezed,
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
      lastLogon: freezed == lastLogon
          ? _value.lastLogon
          : lastLogon // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$_UsersCopyWith(_$_Users value, $Res Function(_$_Users) then) =
      __$$_UsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'lastUpdated') int? lastUpdated,
      @JsonKey(name: 'lastLogon') int? lastLogon});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res, _$_Users>
    implements _$$_UsersCopyWith<$Res> {
  __$$_UsersCopyWithImpl(_$_Users _value, $Res Function(_$_Users) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? lastUpdated = freezed,
    Object? lastLogon = freezed,
  }) {
    return _then(_$_Users(
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
      lastLogon: freezed == lastLogon
          ? _value.lastLogon
          : lastLogon // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Users implements _Users {
  const _$_Users(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'lastLogon') this.lastLogon});

  factory _$_Users.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFromJson(json);

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
  @JsonKey(name: 'lastLogon')
  final int? lastLogon;

  @override
  String toString() {
    return 'Users(userId: $userId, username: $username, avatar: $avatar, location: $location, lastUpdated: $lastUpdated, lastLogon: $lastLogon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Users &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.lastLogon, lastLogon) ||
                other.lastLogon == lastLogon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, username, avatar, location, lastUpdated, lastLogon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      __$$_UsersCopyWithImpl<_$_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      {@JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'avatar') final String? avatar,
      @JsonKey(name: 'location') final Location? location,
      @JsonKey(name: 'lastUpdated') final int? lastUpdated,
      @JsonKey(name: 'lastLogon') final int? lastLogon}) = _$_Users;

  factory _Users.fromJson(Map<String, dynamic> json) = _$_Users.fromJson;

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
  @JsonKey(name: 'lastLogon')
  int? get lastLogon;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'lng')
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'lng') double? lng, @JsonKey(name: 'lat') double? lat});
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
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $Res call(
      {@JsonKey(name: 'lng') double? lng, @JsonKey(name: 'lat') double? lat});
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
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
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
  final double? lng;
  @override
  @JsonKey(name: 'lat')
  final double? lat;

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
      {@JsonKey(name: 'lng') final double? lng,
      @JsonKey(name: 'lat') final double? lat}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @JsonKey(name: 'lng')
  double? get lng;
  @override
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
