import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  final double size;
  final VoidCallback onClick;
  final VoidCallback? onLongPress;
  final Widget child;
  final bool hasShadow;
  const FloatingButton({
    Key? key,
    required this.onClick,
    required this.child,
    required this.size,
    this.hasShadow = false,
    this.onLongPress,
  }) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Color(0xFF1C1B1F)),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        minimumSize: const MaterialStatePropertyAll(Size.zero),
      ),
      onPressed: widget.onClick,
      onLongPress: widget.onLongPress,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: widget.child,
      ),
    );
  }
}
