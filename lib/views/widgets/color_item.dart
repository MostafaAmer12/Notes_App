import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.tealAccent,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 27,
              ))
          : CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
    );
  }
}
