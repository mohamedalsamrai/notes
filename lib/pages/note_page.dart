import 'package:flutter/material.dart';
import 'package:notes/components/note_appbar.dart';
import 'package:notes/components/notes_listview.dart';

class NotePage extends StatelessWidget {
  const NotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noteAppBar(),
      body: NotesListview(),
    );
  }
}
