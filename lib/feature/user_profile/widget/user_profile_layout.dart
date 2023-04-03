import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../../constants/hero_tag.dart';
import '../../../utils/route/hero_route.dart';
import '../../map/entity/user_entity.dart';
import '../../widget/fur_button.dart';
import 'update_profile/update_profile_dialog.dart';
import 'user_profile_header.dart';

class UserProfileLayout extends StatefulWidget {
  final bool isSelfProfile;
  final UserEntity userEntity;
  const UserProfileLayout({
    Key? key,
    required this.isSelfProfile,
    required this.userEntity,
  }) : super(key: key);

  @override
  State<UserProfileLayout> createState() => _UserProfileLayoutState();
}

class _UserProfileLayoutState extends State<UserProfileLayout> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() {
              isExpanded = false;
            });
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() {
              isExpanded = true;
            });
          }
          return true;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserProfileHeader(
              avatarUrl: widget.userEntity.avatar,
              isExpanded: true,
              userName: widget.userEntity.username,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: [
                  FurButton(
                    onClick: () async {
                      await Clipboard.setData(
                        ClipboardData(
                          text: widget.userEntity.userId,
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              widget.userEntity.userId,
                              style: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.copy,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Hero(
                    tag: HeroTag.profileChangeHero.name,
                    child: FurButton(
                      onClick: () {
                        Navigator.push(
                          context,
                          HeroRoute(
                            builder: (context) => UpdateProfileDialog(
                              userEntity: widget.userEntity,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Change profile',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
