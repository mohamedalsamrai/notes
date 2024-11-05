import 'package:flutter/material.dart';
import 'package:notes/components/note_appbar.dart';
import 'package:notes/components/notes_listview.dart';
import 'package:notes/theme.dart';

void main() {
  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeApp(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: noteAppBar(), body: NotesListview()));
  }
}


