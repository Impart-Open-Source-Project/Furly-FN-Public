import 'package:flutter/material.dart';

import '../../../constants/global_constant.dart';
import '../../widget/fur_button.dart';

class SettingToggle extends StatelessWidget {
  final VoidCallback onClick;
  final bool isEnabled;
  final Color? activeColor;
  final Widget child;
  const SettingToggle({
    super.key,
    required this.isEnabled,
    this.activeColor,
    required this.onClick,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FurButton(
      onClick: onClick,
      child: AnimatedContainer(
        height: 74.0,
        duration: Global.fastAnimationDuration,
        decoration: BoxDecoration(
          color: isEnabled
              ? const Color(0xFFD0BCFF).withOpacity(0.6)
              : Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: child,
      ),
    );
  }
}
