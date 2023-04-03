import 'package:flutter/material.dart';

class SlideAnimatedTransition extends AnimatedWidget {
  final Widget child;
  final bool forward;
  late final Tween<Offset> _tween;
  SlideAnimatedTransition({
    Key? key,
    required Animation<double> position,
    required this.child,
    this.forward = true,
  }) : super(key: key, listenable: position) {
    if (forward) {
      _tween = Tween(begin: const Offset(1, 0), end: const Offset(0, 0));
    } else {
      _tween = Tween(begin: const Offset(-1, 0), end: const Offset(0, 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    final position = listenable as Animation<double>;
    Offset offset = _tween.evaluate(position);
    if (position.status == AnimationStatus.reverse) {
      if (forward) {
        offset = Offset(-offset.dx, offset.dy);
      } else {
        offset = Offset(-offset.dx, offset.dy);
      }
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: true,
      child: child,
    );
  }
}
