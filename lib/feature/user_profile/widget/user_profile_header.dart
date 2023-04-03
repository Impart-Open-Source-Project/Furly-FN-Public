import 'package:flutter/material.dart';

import '../../../constants/global_constant.dart';

class UserProfileHeader extends StatelessWidget {
  final bool isExpanded;
  final String avatarUrl;
  final String userName;
  const UserProfileHeader({
    Key? key,
    required this.isExpanded,
    required this.avatarUrl,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Global.fastAnimationDuration,
      height: isExpanded ? 200.0 : 70.0,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox.expand(),
          AnimatedPositioned(
            duration: Global.fastAnimationDuration,
            top: isExpanded ? 10.0 : -25.0,
            left: isExpanded ? null : 0,
            child: AnimatedScale(
              scale: isExpanded ? 1.0 : 0.45,
              duration: Global.fastAnimationDuration,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(60.0),
                child: Image.network(
                  avatarUrl,
                  width: 120.0,
                  height: 120.0,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Global.fastAnimationDuration,
            top: isExpanded ? 130.0 : 10.0,
            left: isExpanded ? null : 100.0,
            child: AnimatedScale(
              duration: Global.fastAnimationDuration,
              scale: isExpanded ? 1.0 : 0.7,
              child: Text(
                userName,
                style: const TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
