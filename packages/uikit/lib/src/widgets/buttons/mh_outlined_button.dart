import 'package:flutter/material.dart';

class MHOutlinedButton extends StatelessWidget {
  const MHOutlinedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
  });

  final String title;
  final VoidCallback? onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? OutlinedButton.icon(
            onPressed: onPressed,
            label: Text(title),
            icon: icon,
           )
        : OutlinedButton(
            onPressed: onPressed,
            child: Text(title),
          );
  }
}
