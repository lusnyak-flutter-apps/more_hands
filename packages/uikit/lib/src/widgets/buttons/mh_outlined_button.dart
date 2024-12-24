import 'package:flutter/material.dart';

class MHOutlinedButton extends StatelessWidget {
  const MHOutlinedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.style,
  });

  final String title;
  final VoidCallback? onPressed;
  final Widget? icon;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? OutlinedButton.icon(
            onPressed: onPressed,
            label: Text(title),
            icon: icon,
            style: style,
          )
        : OutlinedButton(
            onPressed: onPressed,
            style: style,
            child: Text(title),
          );
  }
}
