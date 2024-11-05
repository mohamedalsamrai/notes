import 'package:flutter/material.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        "Add",
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
