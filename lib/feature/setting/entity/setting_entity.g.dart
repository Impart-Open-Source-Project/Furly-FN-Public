// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingEntity _$$_SettingEntityFromJson(Map<String, dynamic> json) =>
    _$_SettingEntity(
      backgroundRefresh: json['backgroundRefresh'] as bool?,
      appLanguage: $enumDecodeNullable(_$LanguageEnumMap, json['appLanguage']),
    );

Map<String, dynamic> _$$_SettingEntityToJson(_$_SettingEntity instance) =>
    <String, dynamic>{
      'backgroundRefresh': instance.backgroundRefresh,
      'appLanguage': _$LanguageEnumMap[instance.appLanguage],
    };

const _$LanguageEnumMap = {
  Language.en: 'en',
  Language.zh: 'zh',
};
