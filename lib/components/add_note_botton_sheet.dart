import 'package:flutter/material.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AddNoteSheetForm(),
    );
  }
}

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
