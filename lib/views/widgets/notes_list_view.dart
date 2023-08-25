import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount:notes.length ,
            padding:EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: CustomNotesItem(),
              );
            },
          ),
        );
      },
    );
  }
}
