// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationUpdateRequest _$LocationUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _LocationUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$LocationUpdateRequest {
  @JsonKey(name: 'operate')
  String? get operate => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LocationUpdateRequestData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationUpdateRequestCopyWith<LocationUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationUpdateRequestCopyWith<$Res> {
  factory $LocationUpdateRequestCopyWith(LocationUpdateRequest value,
          $Res Function(LocationUpdateRequest) then) =
      _$LocationUpdateRequestCopyWithImpl<$Res, LocationUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') LocationUpdateRequestData? data});

  $LocationUpdateRequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LocationUpdateRequestCopyWithImpl<$Res,
        $Val extends LocationUpdateRequest>
    implements $LocationUpdateRequestCopyWith<$Res> {
  _$LocationUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operate = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      operate: freezed == operate
          ? _value.operate
          : operate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationUpdateRequestData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationUpdateRequestDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LocationUpdateRequestDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationUpdateRequestCopyWith<$Res>
    implements $LocationUpdateRequestCopyWith<$Res> {
  factory _$$_LocationUpdateRequestCopyWith(_$_LocationUpdateRequest value,
          $Res Function(_$_LocationUpdateRequest) then) =
      __$$_LocationUpdateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') LocationUpdateRequestData? data});

  @override
  $LocationUpdateRequestDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LocationUpdateRequestCopyWithImpl<$Res>
    extends _$LocationUpdateRequestCopyWithImpl<$Res, _$_LocationUpdateRequest>
    implements _$$_LocationUpdateRequestCopyWith<$Res> {
  __$$_LocationUpdateRequestCopyWithImpl(_$_LocationUpdateRequest _value,
      $Res Function(_$_LocationUpdateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operate = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LocationUpdateRequest(
      operate: freezed == operate
          ? _value.operate
          : operate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationUpdateRequestData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationUpdateRequest implements _LocationUpdateRequest {
  const _$_LocationUpdateRequest(
      {@JsonKey(name: 'operate') this.operate,
      @JsonKey(name: 'data') this.data});

  factory _$_LocationUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LocationUpdateRequestFromJson(json);

  @override
  @JsonKey(name: 'operate')
  final String? operate;
  @override
  @JsonKey(name: 'data')
  final LocationUpdateRequestData? data;

  @override
  String toString() {
    return 'LocationUpdateRequest(operate: $operate, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUpdateRequest &&
            (identical(other.operate, operate) || other.operate == operate) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, operate, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationUpdateRequestCopyWith<_$_LocationUpdateRequest> get copyWith =>
      __$$_LocationUpdateRequestCopyWithImpl<_$_LocationUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationUpdateRequestToJson(
      this,
    );
  }
}

abstract class _LocationUpdateRequest implements LocationUpdateRequest {
  const factory _LocationUpdateRequest(
          {@JsonKey(name: 'operate') final String? operate,
          @JsonKey(name: 'data') final LocationUpdateRequestData? data}) =
      _$_LocationUpdateRequest;

  factory _LocationUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_LocationUpdateRequest.fromJson;

  @override
  @JsonKey(name: 'operate')
  String? get operate;
  @override
  @JsonKey(name: 'data')
  LocationUpdateRequestData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LocationUpdateRequestCopyWith<_$_LocationUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationUpdateRequestData _$LocationUpdateRequestDataFromJson(
    Map<String, dynamic> json) {
  return _LocationUpdateRequestData.fromJson(json);
}

/// @nodoc
mixin _$LocationUpdateRequestData {
  @JsonKey(name: 'lng')
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationUpdateRequestDataCopyWith<LocationUpdateRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationUpdateRequestDataCopyWith<$Res> {
  factory $LocationUpdateRequestDataCopyWith(LocationUpdateRequestData value,
          $Res Function(LocationUpdateRequestData) then) =
      _$LocationUpdateRequestDataCopyWithImpl<$Res, LocationUpdateRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lng') double? lng, @JsonKey(name: 'lat') double? lat});
}

/// @nodoc
class _$LocationUpdateRequestDataCopyWithImpl<$Res,
        $Val extends LocationUpdateRequestData>
    implements $LocationUpdateRequestDataCopyWith<$Res> {
  _$LocationUpdateRequestDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_LocationUpdateRequestDataCopyWith<$Res>
    implements $LocationUpdateRequestDataCopyWith<$Res> {
  factory _$$_LocationUpdateRequestDataCopyWith(
          _$_LocationUpdateRequestData value,
          $Res Function(_$_LocationUpdateRequestData) then) =
      __$$_LocationUpdateRequestDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lng') double? lng, @JsonKey(name: 'lat') double? lat});
}

/// @nodoc
class __$$_LocationUpdateRequestDataCopyWithImpl<$Res>
    extends _$LocationUpdateRequestDataCopyWithImpl<$Res,
        _$_LocationUpdateRequestData>
    implements _$$_LocationUpdateRequestDataCopyWith<$Res> {
  __$$_LocationUpdateRequestDataCopyWithImpl(
      _$_LocationUpdateRequestData _value,
      $Res Function(_$_LocationUpdateRequestData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_LocationUpdateRequestData(
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
class _$_LocationUpdateRequestData implements _LocationUpdateRequestData {
  const _$_LocationUpdateRequestData(
      {@JsonKey(name: 'lng') this.lng, @JsonKey(name: 'lat') this.lat});

  factory _$_LocationUpdateRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_LocationUpdateRequestDataFromJson(json);

  @override
  @JsonKey(name: 'lng')
  final double? lng;
  @override
  @JsonKey(name: 'lat')
  final double? lat;

  @override
  String toString() {
    return 'LocationUpdateRequestData(lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUpdateRequestData &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lng, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationUpdateRequestDataCopyWith<_$_LocationUpdateRequestData>
      get copyWith => __$$_LocationUpdateRequestDataCopyWithImpl<
          _$_LocationUpdateRequestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationUpdateRequestDataToJson(
      this,
    );
  }
}

abstract class _LocationUpdateRequestData implements LocationUpdateRequestData {
  const factory _LocationUpdateRequestData(
      {@JsonKey(name: 'lng') final double? lng,
      @JsonKey(name: 'lat') final double? lat}) = _$_LocationUpdateRequestData;

  factory _LocationUpdateRequestData.fromJson(Map<String, dynamic> json) =
      _$_LocationUpdateRequestData.fromJson;

  @override
  @JsonKey(name: 'lng')
  double? get lng;
  @override
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @JsonKey(ignore: true)
  _$$_LocationUpdateRequestDataCopyWith<_$_LocationUpdateRequestData>
      get copyWith => throw _privateConstructorUsedError;
}
