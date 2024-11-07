import 'package:flutter/material.dart';
import 'package:notes/pages/note_page.dart';
import 'package:notes/theme.dart';

void main() {
  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeApp(), debugShowCheckedModeBanner: false, home: NotePage());
  }
}


