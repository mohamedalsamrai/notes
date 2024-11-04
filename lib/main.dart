import 'package:flutter/material.dart';

import 'package:notes/components/note_card.dart';
import 'package:notes/components/notes_listview.dart';

void main() {
  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(), body: NotesListview()));
  }
}
