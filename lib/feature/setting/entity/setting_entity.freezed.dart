// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingEntity _$SettingEntityFromJson(Map<String, dynamic> json) {
  return _SettingEntity.fromJson(json);
}

/// @nodoc
mixin _$SettingEntity {
  bool? get backgroundRefresh => throw _privateConstructorUsedError;
  Language? get appLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingEntityCopyWith<SettingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEntityCopyWith<$Res> {
  factory $SettingEntityCopyWith(
          SettingEntity value, $Res Function(SettingEntity) then) =
      _$SettingEntityCopyWithImpl<$Res, SettingEntity>;
  @useResult
  $Res call({bool? backgroundRefresh, Language? appLanguage});
}

/// @nodoc
class _$SettingEntityCopyWithImpl<$Res, $Val extends SettingEntity>
    implements $SettingEntityCopyWith<$Res> {
  _$SettingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundRefresh = freezed,
    Object? appLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundRefresh: freezed == backgroundRefresh
          ? _value.backgroundRefresh
          : backgroundRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
      appLanguage: freezed == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingEntityCopyWith<$Res>
    implements $SettingEntityCopyWith<$Res> {
  factory _$$_SettingEntityCopyWith(
          _$_SettingEntity value, $Res Function(_$_SettingEntity) then) =
      __$$_SettingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? backgroundRefresh, Language? appLanguage});
}

/// @nodoc
class __$$_SettingEntityCopyWithImpl<$Res>
    extends _$SettingEntityCopyWithImpl<$Res, _$_SettingEntity>
    implements _$$_SettingEntityCopyWith<$Res> {
  __$$_SettingEntityCopyWithImpl(
      _$_SettingEntity _value, $Res Function(_$_SettingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundRefresh = freezed,
    Object? appLanguage = freezed,
  }) {
    return _then(_$_SettingEntity(
      backgroundRefresh: freezed == backgroundRefresh
          ? _value.backgroundRefresh
          : backgroundRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
      appLanguage: freezed == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingEntity implements _SettingEntity {
  const _$_SettingEntity({this.backgroundRefresh, this.appLanguage});

  factory _$_SettingEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SettingEntityFromJson(json);

  @override
  final bool? backgroundRefresh;
  @override
  final Language? appLanguage;

  @override
  String toString() {
    return 'SettingEntity(backgroundRefresh: $backgroundRefresh, appLanguage: $appLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingEntity &&
            (identical(other.backgroundRefresh, backgroundRefresh) ||
                other.backgroundRefresh == backgroundRefresh) &&
            (identical(other.appLanguage, appLanguage) ||
                other.appLanguage == appLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundRefresh, appLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingEntityCopyWith<_$_SettingEntity> get copyWith =>
      __$$_SettingEntityCopyWithImpl<_$_SettingEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingEntityToJson(
      this,
    );
  }
}

abstract class _SettingEntity implements SettingEntity {
  const factory _SettingEntity(
      {final bool? backgroundRefresh,
      final Language? appLanguage}) = _$_SettingEntity;

  factory _SettingEntity.fromJson(Map<String, dynamic> json) =
      _$_SettingEntity.fromJson;

  @override
  bool? get backgroundRefresh;
  @override
  Language? get appLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_SettingEntityCopyWith<_$_SettingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
