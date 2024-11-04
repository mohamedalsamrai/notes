import 'package:flutter/material.dart';

class Note {
  final String title;
  final String details;
  final DateTime creationDate;

  Note({
    required this.title,
    required this.details,
    required this.creationDate,
  });
}