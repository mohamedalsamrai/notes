import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/add_note_bottom_sheet_form.dart';
import 'package:notes/components/custom_text_field.dart';
import 'package:notes/cubits/add_notes_cubit/add_notes_cubit.dart';

class AddNoteBottonSheet extends StatelessWidget {
  AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print(state.errMassage);
          }
          if (state is AddNoteeSucess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNoteSheetForm(),
              ));
        },
      ),
    );
  }
}
