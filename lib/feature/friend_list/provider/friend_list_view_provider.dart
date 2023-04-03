import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/extension/dio_extension.dart';
import '../../../domain/repository/friend_list_repository.dart';
import '../../../utils/error_handle_util.dart';
import '../../map/entity/user_entity.dart';
import '../../map/providers/friend_user_entity_list_provider.dart';

part 'friend_list_view_provider.g.dart';

@riverpod
class FriendListView extends _$FriendListView {
  FriendListRepository? repo;
  @override
  List<UserEntity> build() {
    repo ??= FriendListRepository(dio: ref.dio);
    final friendUserEntityList = ref.watch(friendUserEntityListProvider);
    return friendUserEntityList;
  }
  //TODO: searching, reordering

  Future<void> searchFriend(String userId) async {
    List<UserEntity> filteredList =
        state.where((element) => element.username.contains(userId)).toList();
    state = filteredList;
    final result = await repo!.searchFriend(userId);
    if (result != null) {
      final UserEntity searchResult = UserEntity(
        username: result.username ?? '',
        userId: userId,
        avatar: result.avatar ?? '',
        lat: 999,
        lng: 999,
      );
      filteredList = [searchResult, ...filteredList];
    }
    state = filteredList;
  }

  Future<bool> addFriend(String userId) async {
    final result = await repo!.postAddFriendRequest(userId);
    if (result) {
      ErrorHandler().showErrorSnackBar('已發送好友邀請');
    }
    return result;
  }

  Future<bool> checkFriendRequest() async {
    final result = await repo!.getFriendRequest();
    if (result != null) {
      if (result.requests?.isNotEmpty ?? false) {
        return true;
      }
    }
    return false;
  }

  Future<void> deleteFriend(String userId) async {
    await repo!.postDeleteFriend(userId);
  }

  void searchReset() {
    state = ref.watch(friendUserEntityListProvider);
  }
}
