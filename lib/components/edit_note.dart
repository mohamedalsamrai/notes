import 'package:flutter/material.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';

class EditNoteSheet extends StatelessWidget {
  const EditNoteSheet({super.key});

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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Save",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
