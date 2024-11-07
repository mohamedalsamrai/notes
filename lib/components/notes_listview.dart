import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/components/note_card.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class NotesListview extends StatefulWidget {
  const NotesListview({super.key});

  @override
  State<NotesListview> createState() => _NotesListviewState();
}

class _NotesListviewState extends State<NotesListview> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> noteList =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return ListView.builder(
          itemCount: noteList.length,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(
            top: 20,
          ),
          itemBuilder: (context, index) {
            return NoteCard(
              title: '',
              detail: '',
              date: '',
            );
          },
        );
      },
    );
  }
}
