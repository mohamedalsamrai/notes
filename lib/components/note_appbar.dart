import 'package:flutter/material.dart';

PreferredSizeWidget? noteAppBar({required String title}) {
  return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 35,
        ),
      ),
      actions: [
        IconButton(
            iconSize: 35,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {})
      ]);
}
