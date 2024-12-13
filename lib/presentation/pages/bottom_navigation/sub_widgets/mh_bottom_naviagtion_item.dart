import 'package:flutter/cupertino.dart';

class MHBottomNavigationBarItem {
  final String label;
  final Widget icon;
  final Widget activeIcon;
  final int index;

  MHBottomNavigationBarItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.index,
  });
}
