// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseApiResponse _$BaseApiResponseFromJson(Map<String, dynamic> json) {
  return _BaseApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseApiResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseApiResponseCopyWith<BaseApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseApiResponseCopyWith<$Res> {
  factory $BaseApiResponseCopyWith(
          BaseApiResponse value, $Res Function(BaseApiResponse) then) =
      _$BaseApiResponseCopyWithImpl<$Res, BaseApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$BaseApiResponseCopyWithImpl<$Res, $Val extends BaseApiResponse>
    implements $BaseApiResponseCopyWith<$Res> {
  _$BaseApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseApiResponseCopyWith<$Res>
    implements $BaseApiResponseCopyWith<$Res> {
  factory _$$_BaseApiResponseCopyWith(
          _$_BaseApiResponse value, $Res Function(_$_BaseApiResponse) then) =
      __$$_BaseApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$_BaseApiResponseCopyWithImpl<$Res>
    extends _$BaseApiResponseCopyWithImpl<$Res, _$_BaseApiResponse>
    implements _$$_BaseApiResponseCopyWith<$Res> {
  __$$_BaseApiResponseCopyWithImpl(
      _$_BaseApiResponse _value, $Res Function(_$_BaseApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BaseApiResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseApiResponse implements _BaseApiResponse {
  const _$_BaseApiResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'msg') this.msg,
      @JsonKey(name: 'data') this.data});

  factory _$_BaseApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BaseApiResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'msg')
  final String? msg;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  @override
  String toString() {
    return 'BaseApiResponse(code: $code, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseApiResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, msg, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseApiResponseCopyWith<_$_BaseApiResponse> get copyWith =>
      __$$_BaseApiResponseCopyWithImpl<_$_BaseApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseApiResponseToJson(
      this,
    );
  }
}

abstract class _BaseApiResponse implements BaseApiResponse {
  const factory _BaseApiResponse(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'msg') final String? msg,
      @JsonKey(name: 'data') final dynamic data}) = _$_BaseApiResponse;

  factory _BaseApiResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseApiResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_BaseApiResponseCopyWith<_$_BaseApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
