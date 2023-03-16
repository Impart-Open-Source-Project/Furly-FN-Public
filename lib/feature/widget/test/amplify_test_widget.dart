import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AmplifyTestRenderLess extends ConsumerStatefulWidget {
  final Widget child;
  const AmplifyTestRenderLess({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<AmplifyTestRenderLess> createState() =>
      _AmplifyTestRenderLessState();
}

class _AmplifyTestRenderLessState extends ConsumerState<AmplifyTestRenderLess> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
