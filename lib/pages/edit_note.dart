import 'package:flutter/material.dart';
import 'package:notes/components/add_bottom.dart';
import 'package:notes/components/custom_text_field.dart';
import 'package:notes/components/note_appbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          noteAppBar(title: "Edit", icon: Icons.check_sharp, actionIcon: () {}),
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
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
