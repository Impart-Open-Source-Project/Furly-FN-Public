import 'package:flutter/material.dart';

import '../../map/entity/user_entity.dart';

class UserCard extends StatelessWidget {
  final UserEntity userEntity;
  final VoidCallback onClick;
  final Future<bool> Function() onAddFriendClicked;
  final VoidCallback onDelete;
  const UserCard({
    Key? key,
    required this.userEntity,
    required this.onClick,
    required this.onAddFriendClicked,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 16.0;
    return SizedBox(
      height: 74.0,
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.white.withOpacity(0.08),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          minimumSize: const MaterialStatePropertyAll(Size.zero),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  userEntity.avatar,
                  width: 64.0,
                  height: 64.0,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.person,
                      size: 64.0,
                    );
                  },
                ),
              ),
            ),
            Text(
              userEntity.username,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            if (userEntity.isSearchingResult)
              ElevatedButton(
                onPressed: () async => await onAddFriendClicked(),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white.withOpacity(0.1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                  minimumSize: const MaterialStatePropertyAll(Size.zero),
                  elevation: const MaterialStatePropertyAll(0),
                ),
                child: const SizedBox(
                  height: 74.0,
                  width: 74.0,
                  child: Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            if (!userEntity.isSearchingResult)
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.white,
                iconSize: 24.0,
                elevation: 0,
                padding: const EdgeInsets.all(20.0),
                itemBuilder: (context) {
                  return <PopupMenuEntry>[
                    PopupMenuItem(
                      onTap: onDelete,
                      child: const Text('Delete'),
                    ),
                  ];
                },
              )
          ],
        ),
      ),
    );
  }
}
