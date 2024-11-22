import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';
import 'package:notes/components/note_appbar.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noteAppBar(
          title: "Edit",
          icon: Icons.check_sharp,
          actionIcon: () async {
            widget.noteModel.title = title ?? widget.noteModel.title;
            widget.noteModel.details = detail ?? widget.noteModel.details;
            await widget.noteModel.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 34,
                  ),
                  CustomTextField(
                    hintText: widget.noteModel.title,
                    onSave: (v) {
                      title = v;
                    },
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  CustomTextField(
                    hintText: widget.noteModel.details,
                    maxLine: 5,
                    onSave: (v) {
                      detail = v;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
