import 'package:flutter/material.dart';

import '../../../constants/hero_tag.dart';

class TaskHandleButton extends StatelessWidget {
  final bool hasRequest;
  final VoidCallback onClick;
  const TaskHandleButton({
    Key? key,
    required this.hasRequest,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTag.friendListTaskHandleHero.name,
      child: ElevatedButton(
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
        onPressed: onClick,
        child: Stack(
          children: [
            const SizedBox(
              width: 48.0,
              height: 48.0,
              child: Icon(
                Icons.person_add_alt_1,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            if (hasRequest)
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
