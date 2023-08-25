import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/cubit/simple_bloc_observer.dart';
import 'package:notes_app/views/models/notes_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
