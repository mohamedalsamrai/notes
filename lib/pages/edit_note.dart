import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

class EditNote extends StatefulWidget {
  final NoteModel noteModel;

  const EditNote({super.key, required this.noteModel});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  late TextEditingController _titleController;
  late TextEditingController _detailsController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.noteModel.title);
    _detailsController = TextEditingController(text: widget.noteModel.details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Note',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: 'Title'),
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              controller: _detailsController,
              maxLines: 5,
              decoration: InputDecoration(hintText: 'Details'),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _detailsController.dispose();
    super.dispose();
  }
}
