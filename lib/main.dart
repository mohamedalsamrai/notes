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
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Notes',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                actions: [
                  IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {})
                ]),
            body: NotesListview()));
  }
}
