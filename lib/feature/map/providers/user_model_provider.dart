import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/dto/response/api/register_response.dart';
import '../../../domain/dto/response/api/user_info_response.dart';
import '../../../domain/extension/dio_extension.dart';
import '../../../domain/helper/api_helper.dart';
import '../../../domain/local_storage/shared_preference_provider.dart';
import '../../../domain/provider/api_adapter_provider.dart';
import '../../utils/error_handle_util.dart';
import '../entity/user_entity.dart';

part 'user_model_provider.g.dart';

/// this provider stores the basic information of user
///
/// use this provider as login system, when the state is not null, which means
/// that the user is already logged in,
///
/// to login, call [login]
///
/// to register, call [register]
///
/// remember to call [getUserInfo] after [login] or [register] returns true,
/// [login] or [register] only returns result of successful or not,
/// which means it won't fetch user entity from the database,
/// you need to do it manually,
///
/// the reason i didn't call [getUserInfo] for you is because there needs to be
/// handel error case when [login] or [register] return false.
///
/// to update user info, call [updateUser]
///
/// no need to call [getUserInfo] after [updateUser] since i already do it for you.
///
/// to logout, call [logout]

@riverpod
class UserModel extends _$UserModel {
  SharedPreferences? pref;
  @override
  UserEntity? build() {
    pref = ref.watch(sharedPreferenceNotifierProvider);
    return null;
  }

  Future<bool> register({
    required String userId,
    required String email,
    required String username,
    required String password,
    String? avatar,
  }) async {
    bool result = false;
    final userValid = _checkUser(userId);
    final encrypt = _encryptPassword(password);
    if (userValid) {
      final apiResponse = await ref.dio.post(
        '/auth/register',
        data: {
          'userId': userId,
          'email': email,
          'username': username,
          'password': encrypt,
          'avatar': avatar,
        },
      );
      final response = ApiHelper.tryParseApiResponse(
        response: apiResponse,
        fromJson: RegisterResponse.fromJson,
      );
      if (response.success) {
        ref
            .read(apiAdapterProvider.notifier)
            .setToken(response.data?.token ?? '');
        result = true;
      } else {
        ErrorHandler().showErrorSnackBar(response.msg);
      }
    }
    return result;
  }

  Future<bool> getUserInfo() async {
    bool result = false;
    final apiResponse = await ref.dio.get(
      '/user/info',
    );
    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: UserInfoResponse.fromJson,
    );
    if (response.success && response.data != null) {
      final UserInfoResponse userInfoResponse = response.data!;
      state = UserEntity(
        username: userInfoResponse.username ?? '',
        userId: userInfoResponse.userId ?? '',
        avatar: userInfoResponse.avatar ?? '',
        lat: userInfoResponse.location?.lat ?? 0,
        lng: userInfoResponse.location?.lng ?? 0,
      );
      result = true;
    }
    return result;
  }

  Future<bool> login({
    required String userId,
    required String password,
  }) async {
    bool result = false;
    final encrypt = _encryptPassword(password);
    final apiResponse = await ref.dio.post(
      '/auth/login',
      data: {
        'userId': userId,
        'password': encrypt,
      },
    );
    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
      fromJson: RegisterResponse.fromJson,
    );
    if (response.success) {
      ref
          .read(apiAdapterProvider.notifier)
          .setToken(response.data?.token ?? '');
      result = true;
    } else {
      ErrorHandler().showErrorSnackBar('Login failed');
    }
    return result;
  }

  /// return true = update successfully
  Future<bool> updateUser({
    String? username,
    String? password,
    String? avatar,
  }) async {
    bool result = false;
    String? encrypt;
    if (password != null) {
      encrypt = _encryptPassword(password);
    }
    Map<String, String> jsonPara = {};
    if (username != null) {
      jsonPara.addAll({'username': username});
    }
    if (encrypt != null) {
      jsonPara.addAll({'password': encrypt});
    }
    if (avatar != null) {
      jsonPara.addAll({'avatar': avatar});
    }

    final apiResponse = await ref.dio.post(
      '/user/info',
      data: jsonPara,
    );

    final response = ApiHelper.tryParseApiResponse(
      response: apiResponse,
    );
    if (response.success) {
      result = true;
      await getUserInfo();
    }
    return result;
  }

  void logout() async {
    final apiResponse = await ref.dio.get('/auth/logout');
    final response = ApiHelper.tryParseApiResponse(response: apiResponse);
    if (response.success) {
      state = null;
      await ref.read(apiAdapterProvider.notifier).removeToken();
    }
  }

  bool _checkUser(String userId) {
    // TODO: do some checking before creating the user.
    return true;
  }

  String _encryptPassword(String password) {
    final bytes = utf8.encode(password);
    final encrypt = sha1.convert(bytes).toString();
    return encrypt;
  }
}
