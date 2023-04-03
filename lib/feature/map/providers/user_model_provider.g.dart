// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userModelHash() => r'c789a8a3b03c55553d39580465c71336fc30c303';

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
@ProviderFor(UserModel)
final userModelProvider =
    AutoDisposeNotifierProvider<UserModel, UserEntity?>.internal(
  UserModel.new,
  name: r'userModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserModel = AutoDisposeNotifier<UserEntity?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
