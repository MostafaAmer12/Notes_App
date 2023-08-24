import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/text_field.dart';

class AddNewNotes extends StatelessWidget {
  const AddNewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: AddNotes(),
      ),
    );
  }
}

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  final GlobalKey <FormState> formKey=GlobalKey();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              title =value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              content=value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autoValidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
        ],
      ),
    );
  }
}
