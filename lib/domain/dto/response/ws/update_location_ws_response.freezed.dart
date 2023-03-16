// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_location_ws_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateLocationWsResponse _$UpdateLocationWsResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateLocationWsResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateLocationWsResponse {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateLocationWsResponseCopyWith<UpdateLocationWsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLocationWsResponseCopyWith<$Res> {
  factory $UpdateLocationWsResponseCopyWith(UpdateLocationWsResponse value,
          $Res Function(UpdateLocationWsResponse) then) =
      _$UpdateLocationWsResponseCopyWithImpl<$Res, UpdateLocationWsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'timestamp') int? timestamp,
      @JsonKey(name: 'location') Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$UpdateLocationWsResponseCopyWithImpl<$Res,
        $Val extends UpdateLocationWsResponse>
    implements $UpdateLocationWsResponseCopyWith<$Res> {
  _$UpdateLocationWsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timestamp = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
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
abstract class _$$_UpdateLocationWsResponseCopyWith<$Res>
    implements $UpdateLocationWsResponseCopyWith<$Res> {
  factory _$$_UpdateLocationWsResponseCopyWith(
          _$_UpdateLocationWsResponse value,
          $Res Function(_$_UpdateLocationWsResponse) then) =
      __$$_UpdateLocationWsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'timestamp') int? timestamp,
      @JsonKey(name: 'location') Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_UpdateLocationWsResponseCopyWithImpl<$Res>
    extends _$UpdateLocationWsResponseCopyWithImpl<$Res,
        _$_UpdateLocationWsResponse>
    implements _$$_UpdateLocationWsResponseCopyWith<$Res> {
  __$$_UpdateLocationWsResponseCopyWithImpl(_$_UpdateLocationWsResponse _value,
      $Res Function(_$_UpdateLocationWsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timestamp = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_UpdateLocationWsResponse(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateLocationWsResponse implements _UpdateLocationWsResponse {
  const _$_UpdateLocationWsResponse(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'location') this.location});

  factory _$_UpdateLocationWsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateLocationWsResponseFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @override
  @JsonKey(name: 'location')
  final Location? location;

  @override
  String toString() {
    return 'UpdateLocationWsResponse(userId: $userId, timestamp: $timestamp, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLocationWsResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, timestamp, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLocationWsResponseCopyWith<_$_UpdateLocationWsResponse>
      get copyWith => __$$_UpdateLocationWsResponseCopyWithImpl<
          _$_UpdateLocationWsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateLocationWsResponseToJson(
      this,
    );
  }
}

abstract class _UpdateLocationWsResponse implements UpdateLocationWsResponse {
  const factory _UpdateLocationWsResponse(
          {@JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'timestamp') final int? timestamp,
          @JsonKey(name: 'location') final Location? location}) =
      _$_UpdateLocationWsResponse;

  factory _UpdateLocationWsResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateLocationWsResponse.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'timestamp')
  int? get timestamp;
  @override
  @JsonKey(name: 'location')
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateLocationWsResponseCopyWith<_$_UpdateLocationWsResponse>
      get copyWith => throw _privateConstructorUsedError;
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
