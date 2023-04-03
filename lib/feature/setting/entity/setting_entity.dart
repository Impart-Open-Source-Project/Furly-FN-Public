
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/language_enum.dart';

part 'setting_entity.freezed.dart';
part 'setting_entity.g.dart';

@freezed
class SettingEntity with _$SettingEntity {
  const factory SettingEntity({
    bool? backgroundRefresh,
    Language? appLanguage,
  }) = _SettingEntity;

  factory SettingEntity.fromJson(Map<String, Object?> json) =>
      _$SettingEntityFromJson(json);
}
