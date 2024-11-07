import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/pages/note_page.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/theme.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox("notes_box");
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        )
      ],
      child: MaterialApp(
          theme: themeApp(),
          debugShowCheckedModeBanner: false,
          home: NotePage()),
    );
  }
}
