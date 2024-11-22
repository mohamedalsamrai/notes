import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/pages/edit_note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNote(
                noteModel: noteModel,
              ),
            ));
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
        color: Color(noteModel.color),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      noteModel.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: "Poppins"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        noteModel.delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      },
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                noteModel.details,
                style: TextStyle(
                    color: Color.fromARGB(190, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  noteModel.creationDate,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      fontFamily: "Poppins"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
