import 'package:flutter/material.dart';

class FurButton extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  final double height;
  const FurButton({
    Key? key,
    required this.onClick,
    required this.child,
    this.height = 74.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
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
        child: child,
      ),
    );
  }
}
