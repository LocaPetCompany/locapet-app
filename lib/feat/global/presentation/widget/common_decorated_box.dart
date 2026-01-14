import 'package:flutter/material.dart';

class CommonDecoratedBox extends StatelessWidget {
  final Decoration decoration;
  final double? width;
  final double? height;
  final Widget? child;

  const CommonDecoratedBox({
    super.key,
    required this.decoration,
    this.width,
    this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: decoration,
      child: SizedBox(width: width, height: height, child: child),
    );
  }
}
