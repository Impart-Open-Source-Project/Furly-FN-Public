import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/extension/dio_extension.dart';
import '../../../domain/repository/friend_list_repository.dart';
import '../entity/task_handle_entity.dart';

part 'task_handle_view_provider.g.dart';

@riverpod
class TaskHandleView extends _$TaskHandleView {
  FriendListRepository? repo;
  @override
  List<TaskHandleEntity> build() {
    repo ??= FriendListRepository(dio: ref.dio);
    getFriendRequestList();
    return [];
  }

  void getFriendRequestList() async {
    final result = await repo!.getFriendRequest();
    List<TaskHandleEntity> entities = [];
    if (result != null) {
      if (result.requests?.isNotEmpty ?? false) {
        result.requests?.forEach((element) {
          final entity = TaskHandleEntity(
            userId: element.userId ?? '',
            username: element.username ?? '',
            avatar: element.avatar ?? '',
            requestId: element.requestId ?? 0,
            timestamp: element.requestId ?? 0,
          );
          entities.add(entity);
        });
      }
      state = entities;
    }
  }

  Future<void> taskHandle(int requestId, bool operate) async {
    await repo!.postFriendTaskHandle(requestId, operate);
  }
}
