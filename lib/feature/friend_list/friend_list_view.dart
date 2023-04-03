import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/route/hero_route.dart';
import '../map/entity/lng_lat.dart';
import '../map/providers/friend_user_entity_list_provider.dart';
import '../map/providers/mapbox_controller_provider.dart';
import '../map/utils/map_utils.dart';
import 'provider/friend_list_view_provider.dart';
import 'widget/search_bar.dart';
import 'widget/task_handle_button.dart';
import 'widget/task_handle_dialog.dart';
import 'widget/user_card.dart';

class FriendListView extends ConsumerStatefulWidget {
  final VoidCallback resetPageViewHeight;

  const FriendListView({
    super.key,
    required this.resetPageViewHeight,
  });

  @override
  ConsumerState<FriendListView> createState() => _FriendListViewState();
}

class _FriendListViewState extends ConsumerState<FriendListView> {
  bool isLoading = false;
  bool hasFriendRequest = false;

  void setLoading(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      final result =
          await ref.watch(friendListViewProvider.notifier).checkFriendRequest();
      if (hasFriendRequest != result) {
        setState(() {
          hasFriendRequest = result;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final friendListView = ref.watch(friendListViewProvider);
    final mapController = ref.watch(mapBoxControllerProvider);

    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SearchBar(setLoading: setLoading),
              ),
              const SizedBox(
                width: 10.0,
              ),
              TaskHandleButton(
                hasRequest: hasFriendRequest,
                onClick: () async {
                  await Navigator.push(
                    context,
                    HeroRoute(
                      builder: (context) => const TaskHandleDialog(),
                    ),
                  );
                  ref.watch(friendUserEntityListProvider.notifier).fetchData();
                },
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          if (isLoading) ...[
            const SizedBox(
              width: 24.0,
              height: 24.0,
              child: CircularProgressIndicator(),
            ),
            const SizedBox(height: 10.0),
          ],
          Expanded(
            child: ListView.builder(
              itemCount: friendListView.length,
              padding: const EdgeInsets.only(bottom: 10.0),
              itemBuilder: (context, index) => UserCard(
                userEntity: friendListView[index],
                onClick: () {
                  animateCameraToUser(
                    mapController,
                    LngLat(
                      friendListView[index].lng,
                      friendListView[index].lat,
                    ),
                  );
                  widget.resetPageViewHeight();
                  Navigator.pop(context);
                },
                onAddFriendClicked: () async =>
                    await ref.read(friendListViewProvider.notifier).addFriend(
                          friendListView[index].userId,
                        ),
                onDelete: () async {
                  await ref
                      .read(friendListViewProvider.notifier)
                      .deleteFriend(friendListView[index].userId);
                  ref.read(friendUserEntityListProvider.notifier).fetchData();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
