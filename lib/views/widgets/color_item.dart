import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30,
      ),
    );
  }
}