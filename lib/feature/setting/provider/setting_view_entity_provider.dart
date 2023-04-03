import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/language_enum.dart';
import '../../../domain/local_storage/shared_preference_provider.dart';
import '../entity/setting_entity.dart';

part 'setting_view_entity_provider.g.dart';

@riverpod
class SettingViewEntity extends _$SettingViewEntity {
  SharedPreferences? pref;
  @override
  SettingEntity? build() {
    pref = ref.watch(sharedPreferenceNotifierProvider);
    final entity = _getSharedPreferences();
    return entity;
  }

  void setBackgroundRefresh({bool? backgroundRefresh}) {
    if (backgroundRefresh != null) {
      if (backgroundRefresh != state?.backgroundRefresh) {
        final entity = state?.copyWith(backgroundRefresh: backgroundRefresh);
        if (entity != null) {
          _storeSharedPreferences(entity);
          state = entity;
        }
      }
    } else {
      final entity = state?.copyWith(
        backgroundRefresh: !(state?.backgroundRefresh ?? false),
      );
      if (entity != null) {
        _storeSharedPreferences(entity);
        state = entity;
      }
    }
  }

  void setLanguage(Language language) {
    if (language != state?.appLanguage) {
      final entity = state?.copyWith(appLanguage: language);
      if (entity != null) {
        _storeSharedPreferences(entity);
        state = entity;
      }
    }
  }

  Future<bool> _storeSharedPreferences(SettingEntity entity) async {
    final result = await pref?.setString(
      settingPreferenceKey,
      jsonEncode(entity.toJson()),
    );
    return result ?? false;
  }

  SettingEntity? _getSharedPreferences() {
    final jsonString = pref?.getString(settingPreferenceKey);
    if (jsonString != null) {
      final json = jsonDecode(jsonString) as Map<String, Object?>;
      final entity = SettingEntity.fromJson(json);
      return entity;
    } else {
      setInitValue();
    }
    return null;
  }

  void setInitValue() async {
    const entity = SettingEntity(
      appLanguage: Language.zh,
      backgroundRefresh: true,
    );
    await _storeSharedPreferences(entity);
    state = entity;
  }
}
