// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_ws_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseWsResponse _$BaseWsResponseFromJson(Map<String, dynamic> json) {
  return _BaseWsResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseWsResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'operate')
  String? get operate => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseWsResponseCopyWith<BaseWsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseWsResponseCopyWith<$Res> {
  factory $BaseWsResponseCopyWith(
          BaseWsResponse value, $Res Function(BaseWsResponse) then) =
      _$BaseWsResponseCopyWithImpl<$Res, BaseWsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$BaseWsResponseCopyWithImpl<$Res, $Val extends BaseWsResponse>
    implements $BaseWsResponseCopyWith<$Res> {
  _$BaseWsResponseCopyWithImpl(this._value, this._then);

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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseWsResponseCopyWith<$Res>
    implements $BaseWsResponseCopyWith<$Res> {
  factory _$$_BaseWsResponseCopyWith(
          _$_BaseWsResponse value, $Res Function(_$_BaseWsResponse) then) =
      __$$_BaseWsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'operate') String? operate,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$_BaseWsResponseCopyWithImpl<$Res>
    extends _$BaseWsResponseCopyWithImpl<$Res, _$_BaseWsResponse>
    implements _$$_BaseWsResponseCopyWith<$Res> {
  __$$_BaseWsResponseCopyWithImpl(
      _$_BaseWsResponse _value, $Res Function(_$_BaseWsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? operate = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BaseWsResponse(
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseWsResponse implements _BaseWsResponse {
  const _$_BaseWsResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'msg') this.msg,
      @JsonKey(name: 'operate') this.operate,
      @JsonKey(name: 'data') this.data});

  factory _$_BaseWsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BaseWsResponseFromJson(json);

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
  final dynamic data;

  @override
  String toString() {
    return 'BaseWsResponse(code: $code, msg: $msg, operate: $operate, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseWsResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.operate, operate) || other.operate == operate) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, msg, operate,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseWsResponseCopyWith<_$_BaseWsResponse> get copyWith =>
      __$$_BaseWsResponseCopyWithImpl<_$_BaseWsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseWsResponseToJson(
      this,
    );
  }
}

abstract class _BaseWsResponse implements BaseWsResponse {
  const factory _BaseWsResponse(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'msg') final String? msg,
      @JsonKey(name: 'operate') final String? operate,
      @JsonKey(name: 'data') final dynamic data}) = _$_BaseWsResponse;

  factory _BaseWsResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseWsResponse.fromJson;

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
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_BaseWsResponseCopyWith<_$_BaseWsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
