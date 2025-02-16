import 'package:flutter/cupertino.dart';

class MHBottomNavigationBarItem {
  final String label;
  final Widget icon;
  final Widget activeIcon;
  final int index;
  final int badgeValue;


  MHBottomNavigationBarItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.index,
    this.badgeValue = 0,
  });
}
