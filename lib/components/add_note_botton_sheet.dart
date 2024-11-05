import 'package:flutter/material.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  hintText: "Title",
                ),
                SizedBox(
                  height: 34,
                ),
                CustomTextField(
                  hintText: "detail",
                  maxLine: 5,
                ),
              ],
            ),
          ),
          AddBottom(),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

