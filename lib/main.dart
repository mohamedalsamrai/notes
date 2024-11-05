import 'package:flutter/material.dart';
import 'package:notes/components/add_note_botton_sheet.dart';
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
        theme: themeApp(), debugShowCheckedModeBanner: false, home: NotePage());
  }
}

class NotePage extends StatelessWidget {
  const NotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.black,
            context: context,
            builder: (context) {
              return AddNoteBottonSheet();
            },
          );
        },
      ),
      appBar: noteAppBar(),
      body: NotesListview(),
    );
  }
}
