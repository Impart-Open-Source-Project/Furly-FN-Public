import 'package:flutter/material.dart';

class FurButton extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  const FurButton({
    Key? key,
    required this.onClick,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: customize the style of this button.
    return OutlinedButton(
      onPressed: onClick,
      child: child,
    );
  }
}
