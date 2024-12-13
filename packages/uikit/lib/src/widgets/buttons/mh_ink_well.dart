import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHInkWell extends StatelessWidget {
  const MHInkWell({
    super.key,
    required this.child,
    this.onTap,
  });

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24.r),
      child: child.paddingAll(8.r),
    );
  }
}
