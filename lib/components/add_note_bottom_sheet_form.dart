import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';
import 'package:notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class AddNoteSheetForm extends StatefulWidget {
  const AddNoteSheetForm({
    super.key,
  });

  @override
  State<AddNoteSheetForm> createState() => _AddNoteSheetFormState();
}

class _AddNoteSheetFormState extends State<AddNoteSheetForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, detail;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 34,
                ),
                CustomTextField(
                  onSave: (value) {
                    title = value;
                  },
                  hintText: "Title",
                ),
                SizedBox(
                  height: 34,
                ),
                CustomTextField(
                  onSave: (value) {
                    detail = value;
                  },
                  hintText: "detail",
                  maxLine: 5,
                ),
              ],
            ),
          ),
          AddBottom(
            action: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    details: detail!,
                    creationDate: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
