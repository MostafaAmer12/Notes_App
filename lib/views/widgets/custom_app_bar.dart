import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
          fontSize: 28,
        ),),
        Spacer(),
        CustomSearchButton(),
      ],
    );
  }
}
