import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/global_constant.dart';
import '../local_storage/shared_preference_provider.dart';

part 'api_adapter_provider.g.dart';

@riverpod
class ApiAdapter extends _$ApiAdapter {
  SharedPreferences? pref;

  BaseOptions options = BaseOptions(
    baseUrl: Global.apiDomain,
    receiveDataWhenStatusError: true,
    validateStatus: (status) => (status != null && status < 500),
  );

  @override
  Dio build() {
    pref = ref.watch(sharedPreferenceNotifierProvider);
    final token = pref?.getString(userTokenKey);
    if (token != null) {
      options.headers = {
        'Authorization': token,
      };
    }
    return Dio(options);
  }

  Future<void> setToken(String token) async {
    options.headers = {
      'Authorization': token,
    };
    state = Dio(
      options,
    );
    // avoid shared preferences update when the token is already set.
    if (pref?.getString(userTokenKey) != token) {
      await pref?.setString(userTokenKey, token);
    }
  }

  Future<void> removeToken() async {
    options.headers = null;
    state = Dio(
      options,
    );
    await pref?.remove(userTokenKey);
  }
}
