import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/global_constant.dart';
import '../providers/friend_user_entity_list_provider.dart';
import 'avatar.dart';

class FriendListButton extends ConsumerStatefulWidget {
  const FriendListButton({super.key});

  @override
  ConsumerState<FriendListButton> createState() => _FriendListButtonState();
}

class _FriendListButtonState extends ConsumerState<FriendListButton> {
  bool isOnClick = false;
  @override
  Widget build(BuildContext context) {
    final friendList = ref.watch(friendUserEntityListProvider);
    return AnimatedScale(
      duration: Global.fastAnimationDuration,
      scale: isOnClick ? 0.9 : 1.0,
      child: Listener(
        onPointerDown: (_) {
          setState(() {
            isOnClick = true;
          });
        },
        onPointerUp: (_) {
          setState(() {
            isOnClick = false;
          });
        },
        child: Stack(
          children: [
            const SizedBox(
              width: 2 * Global.iconSize,
              height: Global.iconSize,
            ),
            if (friendList.length >= 2)
              Positioned(
                top: 10,
                bottom: 10,
                left: 10,
                child: Avatar(
                  url: friendList[1].avatar,
                  iconSize: Global.iconSize - 20,
                ),
              ),
            if (friendList.length >= 3)
              Positioned(
                top: 10,
                bottom: 10,
                right: 10,
                child: Avatar(
                  url: friendList[2].avatar,
                  iconSize: Global.iconSize - 20,
                ),
              ),
            if (friendList.isNotEmpty)
              Positioned(
                top: 0,
                left: Global.iconSize / 2,
                right: Global.iconSize / 2,
                child: Avatar(
                  url: friendList[0].avatar,
                  iconSize: Global.iconSize,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
