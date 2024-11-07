import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>("notes_box");

    notesList = noteBox.values.toList();
    emit(NotesSucess());
  }
}
