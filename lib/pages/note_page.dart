import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/components/note_appbar.dart';
import 'package:notes/components/notes_listview.dart';
import 'package:notes/components/add_note_botton_sheet.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';

class NotePage extends StatelessWidget {
  const NotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar:
            noteAppBar(title: "Note", icon: Icons.search, actionIcon: () {}),
        body: NotesListview(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.black,
              context: context,
              builder: (context) => AddNoteBottonSheet(),
            );
          },
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      );
  }
}
