import 'package:flutter/material.dart';
import 'package:test_project/view/home/atoms/badge_icon_atom.dart';

import '../atoms/badge_child_atom.dart';

class OrdersIcon extends StatelessWidget {
  const OrdersIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Badge(
      largeSize: 18,
      backgroundColor: Colors.transparent,
      alignment: Alignment.lerp(Alignment.topRight, Alignment.bottomLeft, 0.2),
      label: const BadgeIconAtom(),
      child: const BadgeChildAtom(),
    );
  }
}
