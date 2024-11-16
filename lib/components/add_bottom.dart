import 'package:flutter/material.dart';

class AddBottom extends StatelessWidget {
  final VoidCallback action;
  const AddBottom({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 162),
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
    );
  }
}
