import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  final bool isOnClicked;
  final VoidCallback onClick;
  final Widget child;
  const BottomNavigationButton({
    Key? key,
    required this.isOnClicked,
    required this.onClick,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: child,
    );
  }
}
