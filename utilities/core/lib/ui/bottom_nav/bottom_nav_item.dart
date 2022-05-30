import 'package:flutter/material.dart';

class BottomNavItem {
  final String title;
  final Widget? activeIcon;
  final Widget notActiveIcon;

  BottomNavItem({
    required this.title,
    required this.activeIcon,
    required this.notActiveIcon,
  });
}
