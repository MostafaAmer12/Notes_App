import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const ColorItem();
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5),
      ),
    );
  }
}