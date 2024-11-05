import 'package:flutter/material.dart';
PreferredSizeWidget? noteAppBar() {
  return AppBar(
      title: const Text(
        'Notes',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 35,
        ),
      ),
      actions: [
        IconButton(
            iconSize: 40,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {})
      ]);
}