import 'package:flutter/material.dart';
import 'package:notes/components/note_card.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(
        top: 20,
      ),
      itemBuilder: (context, index) {
        return NoteCard();
      },
    );
  }
}
