import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/pages/note_page.dart';
import 'package:notes/theme.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("notes_box");
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeApp(), debugShowCheckedModeBanner: false, home: NotePage());
  }
}
