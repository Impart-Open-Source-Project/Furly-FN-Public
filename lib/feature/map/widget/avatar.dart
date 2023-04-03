import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double iconSize;
  final bool hasBorder;
  const Avatar({
    super.key,
    required this.url,
    required this.iconSize,
    this.hasBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(url)),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: hasBorder ? 3.0 : 0.0,
        ),
      ),
    );
  }
}
