import 'package:flutter/material.dart';

import '../../../../constants/global_constant.dart';
import '../../../../constants/hero_tag.dart';
import '../../../map/entity/user_entity.dart';
import '../../../widget/slide_animated_transition.dart';
import '../../constant/user_profile_constant.dart';
import 'update_normal_data_view.dart';
import 'update_password_dialog.dart';

class UpdateProfileDialog extends StatefulWidget {
  final UserEntity userEntity;
  const UpdateProfileDialog({
    Key? key,
    required this.userEntity,
  }) : super(key: key);

  @override
  State<UpdateProfileDialog> createState() => _UpdateProfileDialogState();
}

class _UpdateProfileDialogState extends State<UpdateProfileDialog> {
  UpdateDialogType type = UpdateDialogType.normal;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Hero(
      tag: HeroTag.profileChangeHero.name,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox.expand(),
            ),
            Positioned(
              left: 20.0,
              right: 20.0,
              child: AnimatedContainer(
                duration: Global.fastAnimationDuration,
                height: type == UpdateDialogType.normal
                    ? size.height * 0.35
                    : size.height * 0.65,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF1C1B1F),
                ),
                child: AnimatedSwitcher(
                  duration: Global.fastAnimationDuration,
                  transitionBuilder: (child, animation) =>
                      SlideAnimatedTransition(
                    forward: type == UpdateDialogType.normal ? true : false,
                    position: animation,
                    child: child,
                  ),
                  child: type == UpdateDialogType.normal
                      ? UpdateNormalDataView(
                          setUpdateDialogType: (type) {
                            setState(() {
                              this.type = type;
                            });
                          },
                          userEntity: widget.userEntity,
                        )
                      : UpdatePasswordDialog(
                          setUpdateDialogType: (type) {
                            setState(() {
                              this.type = type;
                            });
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
