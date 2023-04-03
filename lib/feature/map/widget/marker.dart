import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constants/global_constant.dart';
import '../entity/marker_entity.dart';
import 'avatar.dart';

class Marker extends StatefulWidget {
  final MarkerEntity markerEntity;

  const Marker({
    super.key,
    required this.markerEntity,
  });

  @override
  State<StatefulWidget> createState() {
    return _MarkerState();
  }
}

class _MarkerState extends State<Marker> {
  bool shouldShowOnScreen(Point? point, double ratio) {
    final size = MediaQuery.of(context).size;
    final realHeight = size.height * ratio;
    final realWidth = size.width * ratio;
    if (point != null && (point.x > realWidth || point.y > realHeight)) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var ratio = 1.0;

    // iOS returns logical pixel while Android returns screen pixel
    ratio = Platform.isIOS ? 1.0 : MediaQuery.of(context).devicePixelRatio;
    final show = shouldShowOnScreen(
        Point(
          widget.markerEntity.position.x,
          widget.markerEntity.position.y,
        ),
        ratio);
    return Positioned(
      left: widget.markerEntity.position.x / ratio - Global.iconSize / 2,
      top: widget.markerEntity.position.y / ratio - Global.iconSize / 2,
      child: show
          ? Avatar(
              url: widget.markerEntity.userEntity.avatar,
              iconSize: Global.iconSize,
            )
          : const SizedBox(
              key: ValueKey('NoShow'),
            ),
    );
  }
}
