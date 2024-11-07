import 'package:flutter/material.dart';

PreferredSizeWidget? noteAppBar(
    {required String title, required IconData icon,required VoidCallback actionIcon}) {
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
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            onPressed:actionIcon)
      ]);
}
