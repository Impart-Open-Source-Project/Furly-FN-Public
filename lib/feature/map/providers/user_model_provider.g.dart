// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$UserModelHash() => r'13e7851006f85988c98f79430f8f7c799810f6e9';

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
///
/// Copied from [UserModel].
final userModelProvider = AutoDisposeNotifierProvider<UserModel, UserEntity?>(
  UserModel.new,
  name: r'userModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$UserModelHash,
);
typedef UserModelRef = AutoDisposeNotifierProviderRef<UserEntity?>;

abstract class _$UserModel extends AutoDisposeNotifier<UserEntity?> {
  @override
  UserEntity? build();
}
