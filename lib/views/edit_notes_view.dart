import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(title: 'Edit Note', icon: Icons.check,),
            SizedBox(height: 20,),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 20,),
            CustomTextField(hint: 'Content',maxLines: 5,),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
