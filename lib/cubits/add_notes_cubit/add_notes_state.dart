part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNoteLoading extends AddNotesState {}

final class AddNoteeSucess extends AddNotesState {}

final class AddNotesFailure extends AddNotesState {
  final String errMassage;
  AddNotesFailure(this.errMassage);
}
