// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationUpdateResponse _$LocationUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationUpdateResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'operate')
  String? get operate => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LocationUpdateResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationUpdateResponseCopyWith<LocationUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationUpdateResponseCopyWith<$Res> {
  factory $LocationUpdateResponseCopyWith(LocationUpdateResponse value,
          $Res Function(LocationUpdateResponse) then) =
      _$LocationUpdateResponseCopyWithImpl<$Res, LocationUpdateResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') LocationUpdateResponseData? data});

  $LocationUpdateResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LocationUpdateResponseCopyWithImpl<$Res,
        $Val extends LocationUpdateResponse>
    implements $LocationUpdateResponseCopyWith<$Res> {
  _$LocationUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? operate = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      operate: freezed == operate
          ? _value.operate
          : operate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationUpdateResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationUpdateResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LocationUpdateResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationUpdateResponseCopyWith<$Res>
    implements $LocationUpdateResponseCopyWith<$Res> {
  factory _$$_LocationUpdateResponseCopyWith(_$_LocationUpdateResponse value,
          $Res Function(_$_LocationUpdateResponse) then) =
      __$$_LocationUpdateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') LocationUpdateResponseData? data});

  @override
  $LocationUpdateResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LocationUpdateResponseCopyWithImpl<$Res>
    extends _$LocationUpdateResponseCopyWithImpl<$Res,
        _$_LocationUpdateResponse>
    implements _$$_LocationUpdateResponseCopyWith<$Res> {
  __$$_LocationUpdateResponseCopyWithImpl(_$_LocationUpdateResponse _value,
      $Res Function(_$_LocationUpdateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? operate = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LocationUpdateResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      operate: freezed == operate
          ? _value.operate
          : operate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationUpdateResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationUpdateResponse implements _LocationUpdateResponse {
  const _$_LocationUpdateResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'msg') this.msg,
      @JsonKey(name: 'operate') this.operate,
      @JsonKey(name: 'data') this.data});

  factory _$_LocationUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationUpdateResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'msg')
  final String? msg;
  @override
  @JsonKey(name: 'operate')
  final String? operate;
  @override
  @JsonKey(name: 'data')
  final LocationUpdateResponseData? data;

  @override
  String toString() {
    return 'LocationUpdateResponse(code: $code, msg: $msg, operate: $operate, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUpdateResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.operate, operate) || other.operate == operate) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, msg, operate, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationUpdateResponseCopyWith<_$_LocationUpdateResponse> get copyWith =>
      __$$_LocationUpdateResponseCopyWithImpl<_$_LocationUpdateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationUpdateResponseToJson(
      this,
    );
  }
}

abstract class _LocationUpdateResponse implements LocationUpdateResponse {
  const factory _LocationUpdateResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'msg') final String? msg,
          @JsonKey(name: 'operate') final String? operate,
          @JsonKey(name: 'data') final LocationUpdateResponseData? data}) =
      _$_LocationUpdateResponse;

  factory _LocationUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationUpdateResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(name: 'operate')
  String? get operate;
  @override
  @JsonKey(name: 'data')
  LocationUpdateResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LocationUpdateResponseCopyWith<_$_LocationUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationUpdateResponseData _$LocationUpdateResponseDataFromJson(
    Map<String, dynamic> json) {
  return _LocationUpdateResponseData.fromJson(json);
}

/// @nodoc
mixin _$LocationUpdateResponseData {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationUpdateResponseDataCopyWith<LocationUpdateResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationUpdateResponseDataCopyWith<$Res> {
  factory $LocationUpdateResponseDataCopyWith(LocationUpdateResponseData value,
          $Res Function(LocationUpdateResponseData) then) =
      _$LocationUpdateResponseDataCopyWithImpl<$Res,
          LocationUpdateResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'timestamp') int? timestamp,
      @JsonKey(name: 'location') Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$LocationUpdateResponseDataCopyWithImpl<$Res,
        $Val extends LocationUpdateResponseData>
    implements $LocationUpdateResponseDataCopyWith<$Res> {
  _$LocationUpdateResponseDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_LocationUpdateResponseDataCopyWith<$Res>
    implements $LocationUpdateResponseDataCopyWith<$Res> {
  factory _$$_LocationUpdateResponseDataCopyWith(
          _$_LocationUpdateResponseData value,
          $Res Function(_$_LocationUpdateResponseData) then) =
      __$$_LocationUpdateResponseDataCopyWithImpl<$Res>;
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
class __$$_LocationUpdateResponseDataCopyWithImpl<$Res>
    extends _$LocationUpdateResponseDataCopyWithImpl<$Res,
        _$_LocationUpdateResponseData>
    implements _$$_LocationUpdateResponseDataCopyWith<$Res> {
  __$$_LocationUpdateResponseDataCopyWithImpl(
      _$_LocationUpdateResponseData _value,
      $Res Function(_$_LocationUpdateResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timestamp = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_LocationUpdateResponseData(
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
class _$_LocationUpdateResponseData implements _LocationUpdateResponseData {
  const _$_LocationUpdateResponseData(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'location') this.location});

  factory _$_LocationUpdateResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_LocationUpdateResponseDataFromJson(json);

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
    return 'LocationUpdateResponseData(userId: $userId, timestamp: $timestamp, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUpdateResponseData &&
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
  _$$_LocationUpdateResponseDataCopyWith<_$_LocationUpdateResponseData>
      get copyWith => __$$_LocationUpdateResponseDataCopyWithImpl<
          _$_LocationUpdateResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationUpdateResponseDataToJson(
      this,
    );
  }
}

abstract class _LocationUpdateResponseData
    implements LocationUpdateResponseData {
  const factory _LocationUpdateResponseData(
          {@JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'timestamp') final int? timestamp,
          @JsonKey(name: 'location') final Location? location}) =
      _$_LocationUpdateResponseData;

  factory _LocationUpdateResponseData.fromJson(Map<String, dynamic> json) =
      _$_LocationUpdateResponseData.fromJson;

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
  _$$_LocationUpdateResponseDataCopyWith<_$_LocationUpdateResponseData>
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
