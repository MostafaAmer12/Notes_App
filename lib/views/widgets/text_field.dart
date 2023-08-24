import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this.maxLines =1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}
